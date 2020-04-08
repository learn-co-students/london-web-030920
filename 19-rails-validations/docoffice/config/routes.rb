Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :doctors
  resources :patients, only: [:show, :edit, :new, :create, :update]

  # resources :doctors generates the same routes that this would:

  # get "/doctors", to: "doctors#index", as: "all_doctors"
  # get '/patients/:id', to: 'patients#show'
  # get '/patients/new', to: 'patients#new'
  # post '/patients', to: 'patients#create'
  # get '/patients/:id/edit', to: 'patients#edit'
  # put '/patients/:id', to: 'patients#update'
  # delete '/patients/:id', to: 'patients#delete'
end
