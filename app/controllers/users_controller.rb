class UsersController < ApplicationController

  def show
    @user = User.new
  end
end
