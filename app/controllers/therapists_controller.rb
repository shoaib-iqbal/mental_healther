class TherapistsController < ApplicationController
  before_action :authenticate_user

  def index
    @therapists = Therapist.available
  end
end