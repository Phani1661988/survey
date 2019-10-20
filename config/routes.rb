Rails.application.routes.draw do
  
  devise_for :users

  resources :test_surveys

  resources :questions

  resources :responses

  root to: 'test_surveys#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
