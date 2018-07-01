module SessionsHelper
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
  
  def logged_in?
    current_user.present?
  end
  
  def non_user_redirect_to_login
    if not logged_in?
      redirect_to sign_in_path
    end
  end
end
