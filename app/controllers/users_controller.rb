class UsersController < ApplicationController
  def index
    @users = User.all.order('User ASC')
  end

  def show
    @quotes = Quote.where(:culprit_id => params[:id])
    @user = User.find(params[:id])
  end
end
