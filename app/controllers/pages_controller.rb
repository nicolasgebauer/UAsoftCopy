class PagesController < ApplicationController
    def home
    end
    
    def home_products
        @products = Product.order(price: :desc)
    end
end
