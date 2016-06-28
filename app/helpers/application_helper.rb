module ApplicationHelper
  def cus_current_user_email
    current_user.nil? ? '未登录' : current_user.email
  end

  def redirect_back_or(default)
    redirect_to(session[:return_to] || default )
    session.delete(:return_to)
  end

  def store_location
    session[:return_to]= request.fullpath
  end
end
