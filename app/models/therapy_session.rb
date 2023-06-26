class TherapySession < ApplicationRecord

  belongs_to :therapist, inverse_of: :therapy_sessions
  has_one :appointment, inverse_of: :therapy_session, dependent: :destroy

  scope :available, -> { where(booked: false) }
  scope :booked, -> { where(booked: true) }

end
