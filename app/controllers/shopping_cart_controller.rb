class ShoppingCartController < ApplicationController
# GET /shopping_cart/1
  # GET /shopping_cart/1.json
  def show
    @items = []
    @total = 0
    begin
      contents = get_cart_items

      # Traverse keys (ticket type IDs)
      contents.each_key do |p_id|
        # Amount of tickets per ticket type
        product = Product.find(p_id)
        amount = contents[p_id]

        @items << { product: product, amount: amount, total_price: amount*product.price }
        @total += amount*product.price
      end
    rescue => e
      # Log the error and redirect back to the referer
      logger.error("[ShoppingCartController#show] Unable to display shopping cart items.\nClass:#{e.class}\nError:#{e.message}\nBacktrace: #{e.backtrace.join('\n')}")
      flash[:alert] = "Failed to display shopping cart items"
      redirect_back(fallback_location: root_path)
    end
  end

  def add
    begin
      contents = get_cart_items

      # Attempt to find the required ticket type
      p_id = params[:product_id]
      Product.find(p_id)

      # If no tickets of the given type have been added
      unless contents.has_key?(p_id)
        # Add the first one
        contents[p_id] = 1
      else
        # Otherwise, increment the ticket count
        contents[p_id] += 1
      end

      update_cart(contents)

      # Always redirect back to the referer
      flash[:notice] = "Producto añadido"
      redirect_back(fallback_location: root_path)
    rescue
      # Log the error and redirect back to the referer
      logger.error("[ShoppingCartController#add] Unable to add item to shopping cart")
      flash[:alert] = "Error al añadir producto"
      redirect_back(fallback_location: root_path)
    end
  end

  def remove
    begin
      contents = get_cart_items
      p_id = params[:product_id]

      unless contents.has_key?(p_id)
        raise Exception("[ShoppingCartController#show] Unable to remove item from shopping cart")
      end

      contents[p_id] -= 1
      if contents[p_id] == 0
        contents.delete(p_id)
      end

      update_cart(contents)

      flash[:notice] = "Producto removido"
      redirect_back(fallback_location: root_path)

    rescue
      flash[:alert] = "Error al mover producto"
      redirect_back(fallback_location: root_path)
    end
  end

  def zap
    # If there is a shopping cart cookie available
    if cookies.has_key?(:shopping_cart)
      # delete it
      cookies.delete(:shopping_cart)
    end
    # Redirect to the referer or root path
    redirect_back(fallback_location: root_path)
  end

  private

  # This will serialize the current cart state
  # and store it in the cookie
  def update_cart(items)
    cookies[:shopping_cart] = JSON.generate(items)
  end

  # This will de-serialize the current cart state
  # from the cookie store and return it
  def get_cart_items
    cart = {}
    if cookies.has_key?(:shopping_cart)
      cart = JSON.parse(cookies[:shopping_cart])
    else
      update_cart({})
    end
    cart
  end
end