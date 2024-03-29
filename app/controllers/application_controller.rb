class ApplicationController < ActionController::API

  def encode_token(payload)
    JWT.encode(payload, 'token', 'HS256')
  end

  def auth_header
    request.headers['Authorization']
  end

  def decode_token
    if auth_header
      token = auth_header
      begin
        JWT.decode(token, 'token', true, { algorithm: 'HS256' })
      rescue JWT::DecodeError
        nil
      end
    end
  end

  def current_user
    if decode_token
      user_id = decode_token[0]['id']
      @user = User.find_by(id: user_id)
    end
  end

  def logged_in?
    !!current_user
  end

  def authorized
    render json: {message: 'Please log in'}, status: :unauthorized unless logged_in?
  end

  def current_user_serializer(user)
    {
      'username': user.username,
      'notes': user.notes
    }
  end

end
