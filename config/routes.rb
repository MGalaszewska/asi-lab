Rails.application.routes.draw do
  devise_for :users
  resources :students

  root 'home#index'
end
