class AppointmentsController < ApplicationController
  before_action :authenticate_user, :set_user
  before_action :set_therapy_session, only: :create

  def index
    @appointments = Appointment.where(user: @user)
  end

  def create
    @appointment = Appointment.new(user: @user, therapy_session: @therapy_session, therapist: @therapy_session.therapist)
    if @appointment.save
      @therapy_session.update(booked: true)
      redirect_to appointments_path
    else
      redirect_to therapists_path
    end
  end

  private

  def set_user
    @user = User.find(session[:user]["id"])
  end

  def set_therapy_session
    @therapy_session = TherapySession.find_by(id: params[:therapy_session_id])
  end

end
