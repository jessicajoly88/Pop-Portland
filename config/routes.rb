Rails.application.routes.draw do
  devise_for :users
  root :to => 'home#index'

  resources :acts

  resources :venues

  resources :events, :only => [:show, :index]
end
