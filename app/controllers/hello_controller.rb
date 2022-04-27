class HelloController < ApplicationController
  def world
    @greet = params[:greet]&.gsub(/\A['"]/, "")&.gsub(/['"]\Z/, "")
  end
end
