class MessagesController < ApplicationController
  before_action do
    @conversation = Conversation.find(params[:conversation_id])
  end

  def index
    @messages = @conversation.messages.where("id > ?", params[:data].to_i )
    if @messages.last && @messages.last.user_id != current_user.id
      @messages.last.read = true;
    end
    @message = @conversation.messages.new
    respond_to do |format|
      format.html { render :layout => false }
      format.js { render :layout => false }
      format.json { render :layout => false }
    end
  end

  def new
    @message = @conversation.messages.new
  end

  def create
    @message = @conversation.messages.new(message_params)
    if @message.save
      redirect_to conversation_messages_path(@conversation)
    else
      @messages = @conversation.messages
      @errors = @message.errors.full_messages
      render "index.html"
    end
  end

  private
  def message_params
    params.require(:message).permit(:body, :user_id)
  end
end
