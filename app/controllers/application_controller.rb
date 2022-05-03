class ApplicationController < ActionController::Base
  def authenticate_inviter!
    authenticate_user!(force: true)
  end
end
