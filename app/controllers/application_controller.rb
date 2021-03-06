class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #用于将其他帮助模块引入
  #helper

  include ApplicationHelper
  protect_from_forgery with: :exception


  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  #简单点来说就是
  #　sign_in / sign_up / account_update 的参数是强制固定的
  #如果想要上传额外的参数的的话就需要使用此过滤器
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end
end
