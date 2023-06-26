# Create therapists
therapists = [
  { name: "John Doe", specialization: "Cognitive Behavioral Therapy" },
  { name: "Jane Smith", specialization: "Family Therapy" },
  { name: "Michael Johnson", specialization: "Art Therapy" }
]

therapists.each do |therapist_params|
  Therapist.create!(therapist_params)
end

# Create therapy sessions
sessions = [
  { therapist: Therapist.first, start_time: DateTime.now, end_time: DateTime.now + 1.hour },
  { therapist: Therapist.first, start_time: DateTime.now, end_time: DateTime.now + 2.hour },
  { therapist: Therapist.first, start_time: DateTime.now, end_time: DateTime.now + 3.hour },
  { therapist: Therapist.second, start_time: DateTime.now + 2.hours, end_time: DateTime.now + 3.hours },
  { therapist: Therapist.third, start_time: DateTime.now + 4.hours, end_time: DateTime.now + 5.hours }
]

sessions.each do |session_params|
  TherapySession.create!(session_params)
end
