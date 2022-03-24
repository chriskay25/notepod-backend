class Api::V1::UsersController < ApplicationController

  def create
    user = User.create(user_params)
    if user.valid?
      render json: {user: user}, status: :ok
    else
      render json: { message: 'Failed to create user account' }, status: :not_acceptable
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end

end