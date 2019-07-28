Rails.application.routes.draw do
  resources :registrations, only: [:create]
  resources :sessions, only: [:create]
  delete :logout, to: "sessions#logout"
  get :logged_in, to: "session#logged_in"
  root to: "static#home"
end
