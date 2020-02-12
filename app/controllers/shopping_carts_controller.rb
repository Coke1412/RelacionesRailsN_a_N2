class ShoppingCartsController < ApplicationController
 
  def show
    @cart = Order.cart(current_user)
    @total = @cart.inject(0){ |sum, order| sum + order.product.price }

  end
end
