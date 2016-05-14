class AdminController < ApplicationController
  before_action :authenticate_user!

  def become
    return unless current_user.is_an_admin?
    sign_in(:user, User.find(params[:id]))
    redirect_to root_url # or user_root_url
  end
end
