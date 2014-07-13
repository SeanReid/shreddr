class UserController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @messages = Message.where(user_id: @user.id).order("created_at DESC")
  end

  def create
  end
end
