module SessionsHelper

  # Log in given user
  def log_in(user)
    session[:user_id] = user.id
  end

  # returns current logged in user if they exist
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  # returns true if the user is logged in
  def logged_in?
    !current_user.nil?
  end
end
