class ApplicationController < ActionController::Base
  helper_method :current_user

  def current_user
    @current_user ||= User.find_or_create_by(session: session.id.to_s)
  end
end
