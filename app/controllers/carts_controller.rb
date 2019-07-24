class CartsController < ApplicationController
  def index
    list_product check_cookie_cart
  end

  def shopping
    add_product params[:product_id]
    render json: {size_cart: size_cart}
  end
end
