class ApplicationController < ActionController::API
  include ActionController::Cookies
  skip_before_action :verify_authenticity_token

  def current_user
    User.find_by(session_token: cookies[:session_token])
  end
end
