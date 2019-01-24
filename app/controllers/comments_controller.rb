class CommentsController < ApplicationController
  def create
    @event = Event.find(params[:format].to_i)
    @comment = Comment.new(comment_params)
    @comment.event = @event
    @comment.user = current_user
    if @comment.save!
      redirect_to event_path(@event)
    else
      render 'new'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
