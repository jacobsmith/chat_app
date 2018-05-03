class ApplicationController < ActionController::API
  include ActionController::Cookies

  def current_user
    session_token = request.headers["HTTP_SESSION_TOKEN"]
    User.find_by(session_token: session_token)
  end
end
