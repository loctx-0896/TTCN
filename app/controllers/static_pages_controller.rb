class StaticPagesController < ApplicationController
  def home
    @q = Product.search(params[:q])
    @products = @q.result.sort_products.paginate page: params[:page],
      per_page: Settings.perpage_12
    if params[:category_id]
      @products = Product.find_product_by_category_id(params[:category_id]).paginate page: params[:page],
        per_page: Settings.perpage_12
    end
    return if @products.present?
    flash[:danger] = t "controllers.search_faill"
  end

  def help; end

  def about; end

  def contact; end
end
