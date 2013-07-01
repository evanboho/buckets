class UsersController < ApplicationController
  respond_to :json

  def show
    respond_with User.find(params[:id])
  end

  def update
    respond_with User.find(params[:id]).update_attributes(user_params)
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end

end