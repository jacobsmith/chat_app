class SessionsController < ApplicationController
  def create
    user = User.find_by(username: params[:username])

    session_token = SecureRandom.uuid

    # perform authentication here

    user.update(session_token: session_token)
    cookies[:session_token] = session_token
  end
end
