require 'date'

class PagesController < ApplicationController
    skip_before_action :authenticate_user!, only: :home
  def home
  end

  def dashboard
    @grannies = Granny.all
    @future_appointments = Appointment.where("end_date > ?", Date.today)
    @past_appointments = Appointment.where("end_date < ?", Date.today)
  end
end
