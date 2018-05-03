class SessionsController < ApplicationController
  def create
    user = User.find_by(username: params[:username])

    session_token = SecureRandom.uuid

    if user.present? && params[:password] == 'password'
      user.update(session_token: session_token)
      render json: { session_token: session_token }
    else
      render json: { success: false, message: "Your password was incorrect. Try 'password'." }
    end
  end
end
