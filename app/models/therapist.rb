class Therapist < ApplicationRecord

  has_many :therapy_sessions, inverse_of: :therapist, dependent: :destroy
  has_many :appointments, inverse_of: :therapist, dependent: :destroy

  scope :available, -> { joins(:therapy_sessions).where(therapy_sessions: { booked: false }) }

end 