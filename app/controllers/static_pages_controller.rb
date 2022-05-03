class StaticPagesController < ApplicationController
  def about
    @page_heading = "About Me"
  end

  def blog
    @page_heading = "Blog"
  end

  def welcome
    @page_heading = "Welcome"
  end
end
