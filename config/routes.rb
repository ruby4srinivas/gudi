Rails.application.routes.draw do
   get 'profiles/index', to: 'profiles#index'
   get '/profiles/:id', to: 'profiles#show', as: 'profiles'
  #resources :profiles, only:[:show, :index]

  namespace :admin do
    resources :profiles
  end
  namespace :admin do
    resources :users
    root to: "users#index"
  end
  root to: 'profiles#index'
  devise_for :users
  resources :users
end
