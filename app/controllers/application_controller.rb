class ApplicationController < ActionController::API

  def encode_token(payload)
    JWT.encode(payload, 'token', 'HS256')
  end

  def auth_header
    request.headers['Authorization']
  end

  def decode_token
    if auth_header
      token = auth_header.split(' ')[1]
      begin
        JWT.decode(token, 'token', true, { algorithm: 'HS256' })
      rescue JWT::DecodeError
        nil
      end
    end
  end

end
