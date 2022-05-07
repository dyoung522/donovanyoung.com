# StaticPagesController
class StaticPagesController < ApplicationController
  def about
    @page_heading = "Welcome"
  end

  def blogs
    @page_heading = "Blogs"
  end

  def resume
    @page_heading = "Resume"
  end

  def projects
    @page_heading = "Projects"
  end
end
