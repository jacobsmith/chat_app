class SessionsController < ApplicationController
  def create
    user = User.find_by(username: params[:username])

    session_token = SecureRandom.uuid

    # perform authentication here

    user.update(session_token: session_token)
    cookies[:session_token] = session_token

    if (params[:password] == "password") {
      render json: { success: true }
    } else {
      render json: { success: false, message: "Your password was incorrect. Try 'password'." }
    }
  end
end
