module ShoppingCart
    def reset_cart
      update_cart({})
    end
  
    def shopping_cart_cookie
      "#{current_user.email.gsub(/@/, '')}_shopping_cart"
    end
  
    def update_cart(items)
      cookies[shopping_cart_cookie] = JSON.generate(items)
    end
  
    def cart_item_count
      if cookies.has_key?(shopping_cart_cookie)
        cart_contents = JSON.parse(cookies[shopping_cart_cookie])
        num_items = 0
        cart_contents.each_key do |k|
          num_items += cart_contents[k]
        end
        return num_items
      end
      return 0
    end
  
    def get_cart_items
      cart = {}
      if cookies.has_key?(shopping_cart_cookie)
        cart = JSON.parse(cookies[shopping_cart_cookie])
      else
        update_cart({})
      end
      cart
    end
  end