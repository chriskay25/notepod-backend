class Api::V1::AuthsController < ApplicationController

  # Handle login
  def create
    user = User.find_by(username: login_params[:username])
    if user && user.authenticate(login_params[:password])
      token = encode_token({ id: user.id })
      render json: AuthSerializer.new(user, params: {jwt: token}).serializable_hash.to_json, status: :accepted
    else
      render json: {
        error: 'Invalid credentials',
        details: user.errors.full_messages
      }, status: :unauthorized
    end
  end

  def get_current_user
    if logged_in?
      render json: AuthSerializer.new(current_user).serializable_hash.to_json, status: :ok
    else
      render json: {error: "No user is logged in"}, status: :unauthorized
    end
  end

  private

  def login_params
    params.require(:user).permit(:username, :password)
  end

end