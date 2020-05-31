Rails.application.routes.draw do
  resources :users
  resources :sessions
  resources :tournaments do 
    resources :registrations
  end

  get 'tournaments/:tournament_id/registrations/shared/:key', to: 'registrations#shared', as: 'admin_registrations'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'about', to: 'application#about', as: 'about'

  root :to => 'tournaments#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end