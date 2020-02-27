Rails.application.routes.draw do
  get "/grannies", to: "grannies#index"
  patch "/profile", to: "profiles#update"
  get "/profile/edit", to: "profiles#edit"
  get "/profile", to: "profiles#show"

  devise_for :users
  root to: 'pages#home'
  resources :grannies do
  	resources :appointments, only: [ :new, :create ]
  end
  get "/dashboard", to: "pages#dashboard", as: "dashboard"
end
