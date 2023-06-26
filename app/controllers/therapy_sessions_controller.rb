class TherapySessionsController < ApplicationController
  before_action :authenticate_user

  def index
    @therapist = Therapist.find(params[:therapist_id])
    @therapy_sessions = TherapySession.available.where(therapist: @therapist)
  end

end
