# StaticPagesController
class StaticPagesController < ApplicationController
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
    @tags = %w[
      Linux BSD MacOS Windows iOS
      AWS GCP Heroku
      Ruby Ruby-on-Rails RSpec
      Python
      JAVA
      Apache nginx
      tmux screen
      ssh git GitHub
      shell bash zsh
      Docker
      firebase PostgreSQL
      javascript Reactjs react-jsx jest Node-js Electronjs
      HTML HAML
      sass CSS TailwindCSS
      acting improv team-building
    ].sort.uniq
  end

  def projects
    @page_title = "Donovan's Projects"
    @page_heading = "Projects"
  end
end
