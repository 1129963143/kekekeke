module ApplicationHelper
  protected
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

  public
  def datetime_format_helper(datetime)
    DateTime.parse(datetime.to_s).strftime('%y-%m-%d %H:%M:%S').to_s
  end
end
