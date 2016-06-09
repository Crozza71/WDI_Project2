class UsersController < ApplicationController
  def index
    @users = User.all.order('User ASC')
  end

  def show

    @user = User.find(params[:id])
    @quotes = @user.quotes
    if @user 
      render 'show'
    else
      redirect_to root_path


    end
  end
end
