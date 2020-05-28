class ApplicationController < ActionController::API
  before_action :authorized

  def initialize
    @secret = ENV["RAILS_AUTH_LECTURE_SECRET_KEY"]
  end

  def auth_header
    request.headers["Authorization"]
  end

  def encode_token(payload)
    JWT.encode(payload, @secret)
  end

  def decoded_token
    if auth_header
      token = auth_header.split(" ")[1]
      begin
        return JWT.decode(token, @secret)[0]
      rescue JWT::DecodeError
        return nil
      end
    end
  end

  def current_user
    if decoded_token
      user_id = decoded_token["user_id"]
      @user = User.find_by(id: user_id)
    else
      nil
    end
  end

  def logged_in?
    !!current_user
  end

  def authorized
    render json: { message: "Please log in" }, status: :unauthorized unless logged_in?
  end
end
