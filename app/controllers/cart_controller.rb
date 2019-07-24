class CartController < ApplicationController
  def shopping
    add_product params[:product_id]
    render json: {size_cart: size_cart}
  end
end
