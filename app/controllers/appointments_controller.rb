class AppointmentsController < ApplicationController

  def index
    @user = User.find(params[:user_id])
  end

  def show
    @user = User.find(params[:user_id])
    @appointment = @user.appointments.find(params[:id])
  end

  def new
    @user = User.find(params[:user_id])
    @appointment = Appointment.new
  end

  def create
    @user = User.find(params[:user_id])
    @appointment = Appointment.new(appointment_params)
    @appointment.user_id = @user.id
    if @appointment.save
      redirect_to appointment_path(@user)
    end
  end

  private
  def appointment_params
    params.require(:appointment).permit(:name, :due, :doctor_id, :user_id)
  end
end
