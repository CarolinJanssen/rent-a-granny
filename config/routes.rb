Rails.application.routes.draw do
  # get 'appointments/grannies:references'
  # get 'appointments/users:references'
  get "/grannies", to: "grannies#index"
  devise_for :users
  root to: 'pages#home'
  resources :grannies

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
