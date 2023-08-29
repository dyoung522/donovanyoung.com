class UserSessionsController < ApplicationController
  def new
    @page_title = "Donovan: Login"
    @page_heading = "Please Login"
  end

  def create
    @user = login(params[:email], params[:password], true)

    if @user
      redirect_back_or_to(root_path, notice: "You have successfully logged in as #{current_user.email}")
    else
      redirect_to(login_path, status: :unprocessable_entity, alert: t(:auth_failed))
    end
  end

  def destroy
    logout
    redirect_to(root_path, status: :see_other, notice: t(:logged_out))
  end
end
