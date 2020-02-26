Rails.application.routes.draw do
  get "/grannies", to: "grannies#index"
  devise_for :users
  root to: 'pages#home'
  resources :grannies
  resources :profiles

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
