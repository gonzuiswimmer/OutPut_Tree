class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  # def update
  #   if @user.update
  #     redirect_to user_path(current_user.id)
  #   else
  #     render :edit
  #   end
  # end

  private
  def user_params
  end


end
