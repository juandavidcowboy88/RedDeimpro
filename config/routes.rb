Rails.application.routes.draw do
  get 'general/index'

  devise_for :users
  root 'improgroups#index'
  resources :improgroups
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
