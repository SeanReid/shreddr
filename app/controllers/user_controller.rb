class UserController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @messages = Message.find(params[:id])
  end

  def create
  end
end
