Rails.application.routes.draw do
  resources :users, except: [:destroy, :update, :edit], param: :username
  get 'preferences', to: 'users#preferences', as: 'preferences'

  resources :fablepets, except: [:destroy, :edit], param: :unique_name do
    get 'colors'
    get 'elements'
    get 'stats'
  end
  resources :sessions, only: [:new, :create, :destroy]

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  #users stuff

  #fablepet stuff
  #get 'colors/:unique_name', to 'fablepet#colors', as: 'colors/:unique_name'
  #get 'elements/:unique_name', to 'fablepet#elements', as: 'elements/:unique_name'

  #signing up
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  # You can have the root of your site routed with "root"
  root 'main#index'
end
