class ApplicationController < ActionController::API

  def token
    request.headers["Authorization"]
  end

  def encode_token(user_id)
    JWT.encode({user_id: user_id}, "otter")
  end
  
  def decode_token
    begin
      JWT.decode(token, "otter")[0][:user_id]
    rescue
      nil
    end
  end

  def current_user
    User.find_by(id: decode_token)
  end

end
