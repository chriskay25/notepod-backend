class Api::V1::UsersController < ApplicationController

  def create
    user = User.create(user_params)
    if user.valid?
      token = encode_token({id: user.id})
      render json: UserSerializer.new(user, params: {jwt: token}).serializable_hash.to_json, status: :ok
    else
      render json: { error: user.errors }, status: :not_acceptable
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end

end