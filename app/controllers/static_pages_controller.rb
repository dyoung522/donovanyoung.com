# StaticPagesController
class StaticPagesController < ApplicationController
  before_action :require_login, only: [:members]

  def about
    @page_heading = "Welcome"
  end

  def blogs
    @page_title = "Donovan's Blogs"
    @page_heading = "Blogs"
  end

  def resume
    @page_title = "Donovan's Resume"
    @page_heading = "Resume"
  end

  def projects
    @page_title = "Donovan's Projects"
    @page_heading = "Projects"
  end
end
