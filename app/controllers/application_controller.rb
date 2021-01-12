class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token
  include CurrentUserConcern

  def require_login
    render json: {message: "Please login."}, status: unauthorized unless @current_user
  end

end
