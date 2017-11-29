Rails.application.routes.draw do
  devise_for :profiles
  resources :clients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => "application#index"

  post 'client', to: 'clients#create'
end
