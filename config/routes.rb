Rails.application.routes.draw do
  root 'therapists#index'
  resources :therapists do
    resources :therapy_sessions, only: %w[index]
  end
  resources :appointments, only: %w[index create]
end
