class MessageController < ApplicationController

  before_action :get_message , only: [:edit, :update, :destroy]
  before_action :check_for_auth , :only => [:edit, :update, :destroy]

  def get_message
    @message = Message.find(params[:id])
  end

  def check_for_auth
    # if session[:user_id] != @message.user_id
    #   redirect_to edit_message_path, :notice => "Can only edit your Shredd!"
    # end
  end

  def index
    # List all messages

    # if params[:name]
    #   @user = User.where(name: params[:name]).first
    #   @messages = @user.messages
    # else
      @messages = Message.all.order("created_at DESC")
    # end
  end

  def show
    # show a single message
    @messages = Message.all.each
  end

  def new
    # new tweet form
    @message = Message.new
    @message.user = User.first
  end

  def edit
    # show an edit form
  end

  def create
    # create a new message
    message = params[:message][:status]
    if @message = Message.create(user: User.first, status: message)
      redirect_to message_index_path
    else
      render :new
    end
  end

  def destroy
    # delete a message
    @message.destroy
  end

  def update
    # update a message
    # if @message.update_attributes(params[:message])
    #   redirect_to root_path, notice: => "Success!"
    # else
    #   render :edit
    # end
  end

end
