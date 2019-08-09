class EventsController < ApplicationController
  before_action :authenticate_user!
  def index
    @events = Event.all
    @count = Event.all.where('created_at >= ?', Date.today).count
  end

  def new
    @event = Event.new
  end

  def create

    @event = Event.new(event_params)
    @event.user = current_user
    if @event.save!
      redirect_to event_path(@event)
    else
      render 'new'
    end
  end

  def show
    @event = Event.find(params[:id])
    @comment = Comment.new
  end

  def join
    @event = Event.find(params[:id])
    @user = current_user
    if @event.participant.include?(@user.id.to_s)
      flash.notice = "Tu es déjà inscrit à cet évènement"
    else
      @event.participant << @user.id
      @event.save!
      redirect_to event_path(@event)
    end
  end

  def quit
    @event = Event.find(params[:id])
    @user = current_user
    if @event.participant.include?(@user.id.to_s)
      @event.participant.delete(@user.id.to_s)
      @event.save!
      redirect_to event_path(@event)
    else
      flash.notice = "Tu n'es pas inscrit à cet évènement"
    end
  end

  private

  def event_params
    params.require(:event).permit(:title, :content, :address, :date, :sport, :photo)
  end
end

