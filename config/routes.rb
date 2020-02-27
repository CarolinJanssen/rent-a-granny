Rails.application.routes.draw do
  get "/grannies", to: "grannies#index"
  patch "/profile", to: "profiles#update"
  get "/profile/edit", to: "profiles#edit"
  get "/profile", to: "profiles#show"

  resources :profiles, only: [ :show, :edit, :update ]

  devise_for :users
  root to: 'pages#home'
  resources :grannies do
  	resources :appointments, only: [ :new, :create ]
  end
end
