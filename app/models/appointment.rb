class Appointment < ApplicationRecord

  belongs_to :therapy_session, inverse_of: :appointment
  belongs_to :user, inverse_of: :appointments
  belongs_to :therapist, inverse_of: :appointments

  scope :upcoming_appointments, -> {
    joins(:therapy_session)
    .where(therapy_sessions: {start_time: Time.zone.now.., end_time: Time.zone.now.. })
  }

  def therapist_name
    therapist&.name&.capitalize
  end

end

