class UserSessionsController < ApplicationController
  skip_before_action :require_login, only: %i[new create]

  def new
    @page_title = "Donovan: Login"
    @page_heading = "Please Login"
  end

  def create
    @user = login(params[:email], params[:password], true)

    if @user
      redirect_back_or_to(root_path, notice: "You have successfully logged in as #{current_user.email}")
    else
      flash.now[:alert] = "Authentication Failed"
      render action: "new", status: :unprocessable_entity
    end
  end

  def destroy
    logout
    redirect_to(root_path, status: :see_other, notice: "You have been logged out")
  end
end
