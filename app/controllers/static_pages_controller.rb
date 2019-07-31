class StaticPagesController < ApplicationController
  def home
    @products = Product.sort_products.paginate page: params[:page],
      per_page: Settings.perpage_12
  end

  def help; end

  def about; end

  def contact; end
end
