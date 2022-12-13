class UsersController < ApplicationController

  def index
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
    @current_user_outputs = Output.where(user_id: current_user.id)
  end

  def edit
    @user = User.find(params[:id])
  end

  private
  def user_params
  end


end
