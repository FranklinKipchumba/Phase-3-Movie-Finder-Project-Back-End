class AuthController < ApplicationController
    def login
      user = User.find_by(email: params[:email])
      if user && user.authenticate(params[:password])
        token = encode_token(user_id: user.id)
        render json: { token: token }
      else
        render json: { error: 'Invalid email or password' }
      end
    end
  
    private
  
    def encode_token(payload)
      JWT.encode(payload, Rails.application.secrets.secret_key_base)
    end
end
  