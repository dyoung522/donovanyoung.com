class HelloController < ApplicationController
  def world
    @name = params[:name]&.gsub(/\A['"]/, "")&.gsub(/['"]\Z/, "")
  end
end
