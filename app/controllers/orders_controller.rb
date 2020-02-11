class OrdersController < ApplicationController
  before_action :authenticate_user!

  def create
    product = Product.find(params[:product_id])
    Order.create(product: product, user: current_user)
    redirect_to root_path, notice: "El producto #{product.name} fue agregado al carrito"
  end
end
