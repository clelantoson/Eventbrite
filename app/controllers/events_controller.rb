class EventsController < ApplicationController

  def index
    @all_events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create

    @event = Event.new(start_date: params[:start_date], duration: params[:duration], title: params[:title], description: params[:description], price: params[:price], admin_id: current_user.id, location: params[:location])
    if @event.save
      flash[:success] = "Event bien créé !"
      @success = "Bravo"
      redirect_to event_path(@event.id)
    else
      render 'new'
    end

  end

end
