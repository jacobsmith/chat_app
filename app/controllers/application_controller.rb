class ApplicationController < ActionController::API
  include ActionController::Cookies

  def current_user
    User.find_by(session_token: cookies[:session_token])
  end
end
