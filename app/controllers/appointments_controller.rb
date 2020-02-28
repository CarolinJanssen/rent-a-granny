class AppointmentsController < ApplicationController
  # skip_before_action :verify_authorized
  before_action :set_granny, only: [:create]
  
  def create
    @appointment = Appointment.new(appointment_params)
    authorize @appointment
    @appointment.granny = @granny
    @appointment.user = current_user
      if @appointment.save!
        redirect_to dashboard_path
      else
        render 'grannies/new'
    end
  end


  private

  def appointment_params
    params.require(:appointment).permit(:start_date, :end_date)
  end

  def set_granny
    @granny = Granny.find(params[:granny_id])
  end
end
