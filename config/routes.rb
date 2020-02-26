Rails.application.routes.draw do
  get "/grannies", to: "grannies#index"
  get "/profiles", to: "profiles#update"
  get "/profile", to: "profiles#show"

  devise_for :users
  root to: 'pages#home'
  resources :grannies do
  	resources :appointments, only: [ :new, :create ]
  end
end
