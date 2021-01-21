Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  root to: "dashboard#index"

  resources :diets, only: [:index, :new, :create, :destroy, :edit, :update]
  resources :infos, only: [:index, :new, :create, :destroy, :edit, :update]
  resources :weights, only: [:index, :new, :create]
  resources :meals, only: [:index, :new, :create]
end
