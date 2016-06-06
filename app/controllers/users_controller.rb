class UsersController < ApplicationController
  def index

    @users = User.all.order('User ASC')

  end

  def show
    @users = User.find(params[:id])
  end

  
end
