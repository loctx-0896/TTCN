class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  include CartHelper
  before_action :set_locale, :categories

  private
  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def default_url_options
    {locale: I18n.locale}
  end

  def logged_in_user
    return if logged_in?
    store_location
    flash[:danger] = t "controllers.before_order"
    redirect_to login_url
  end

  def admin_user
    return if current_user.admin?
    flash[:danger] = t "controllers.not_right"
    redirect_to root_path
  end

  def categories
     @categories = Category.sort_categories
  end
end
