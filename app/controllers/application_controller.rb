# ApplicationController
class ApplicationController < ActionController::Base
  before_action :set_page_title
  # before_action :require_login # Add this to pages that require authentication to access

  private

  def not_authenticated
    redirect_to login_path, alert: t(:access_restricted)
  end

  def set_page_title
    @page_title = "Donovan's Web"
    @page_heading = "Welcome"
  end
end
