Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  root to: "dashboard#index"

  resources :weights, only: [:index, :new, :create]
end
