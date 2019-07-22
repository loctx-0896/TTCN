class StaticPagesController < ApplicationController
  def home
    @products = Product.sort_products.paginate page: params[:page],
      per_page: Settings.perpage_12
    @categories = Category.sort_categories
  end

  def help; end

  def about; end

  def contact; end
end
