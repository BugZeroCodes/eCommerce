class ApplicationController < ActionController::Base

  @products = Product.all

  protect_from_forgery with: :exception

  before_action :categories, :brands

  def categories
  	@categories = Category.order(:name)
  end

  def brands
    @brands = Product.pluck(:brand).sort.uniq
  end

  helper_method :current_order

  def current_order
    if !session[:order_id].nil?
      Order.find(session[:order_id])
    else
      Order.new
    end
  end

  before_action :configure_permitted_parameters, if: :devise_controller?

protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :avatar])

    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :avatar])
  end
end
