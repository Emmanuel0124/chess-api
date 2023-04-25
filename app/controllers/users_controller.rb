class UsersController < ApplicationController
  def index
    @users = User.all
    render :index 
  end
  def create
    @user = User.create(
      name: params[:name],
      email: params[:email],
    )
    render :show
  end
  def update
    @user = User.find_by(id: params[:id])
    @user.update(
      name: params[:name],
      email: params[:email],
    )
    render :show
  end


end
