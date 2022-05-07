# ApplicationController
class ApplicationController < ActionController::Base
  before_action :set_page_title

  def set_page_title
    @page_title = "Donovan's Web"
    @page_heading = "Welcome"
  end
end
