class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :logged_in_user
  before_action :admin_user , only: :destroy
  protect_from_forgery with: :exception
  include SessionsHelper
  include NilValueHelper
  include ApplicationHelper
  
  
  
  private
  
  def logged_in_user
    unless logged_in?
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end
  
  def admin_user
    if !current_user.admin?
      flash[:danger] = "You are not an admin user."
    end
    redirect_to(root_url) unless current_user.admin?
  end

  
end
