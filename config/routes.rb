Rails.application.routes.draw do
  resources :users, except: [:destroy, :update], param: :username
  resources :fablepets, except: [:destroy, :update], param: :unique_name
  resources :sessions, only: [:new, :create, :destroy]

  get 'signup', to: 'users#new', as: 'signup'
  get 'preferences', to: 'users#preferences', as: 'preferences'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  root 'main#index'


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
end
