Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :doctors
  resources :patients, only: [:show, :edit, :new, :create, :update]
  resources :users, only: [:create, :show]
  resources :visits, only: [:index]
  root to: "doctors#index"

  # login functionality - sessions
  get "signup", to: "users#new", as: "signup"
  get "login", to: "sessions#new", as: "login"
  post "sessions", to: "sessions#create", as: "sessions"
  delete "sessions", to: "sessions#destroy"
end
