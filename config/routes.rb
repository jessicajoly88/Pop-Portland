Rails.application.routes.draw do
  root :to => 'home#index'

  resources :acts

  resources :venues

  resources :events, :only => [:show, :index]
end
