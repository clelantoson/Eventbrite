class AttendancesController < ApplicationController

  def index
    @all_attendances = Attendance.all

  end

  def show
    @attendance = Attendance.find(params[:id])
  end

  def new
    @attendance =  Attendance.new
  end


  def create
    # @attendance = Attendance.new(stripe_customer_id: params[:stripeToken], user_id: current_user.id, event_id:, )
    
  
    # if @attendance.save
    #   flash[:success] = "Participation bien enregistrée !"
    #   @success = "Bravo"
    #   redirect_to event_path(@event.id)
    # else
    #   render 'new'
    # end
  end


end
