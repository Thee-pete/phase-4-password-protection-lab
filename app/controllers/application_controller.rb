class ApplicationController < ActionController::API
  include ActionController::Cookies
  def authorize
    render json: {error:"You are not authorized"}, status: :unauthorized unless session.include? user_id
end

end
