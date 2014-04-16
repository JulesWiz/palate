Palate::Application.routes.draw do
  resources :users

  root 'users#index'

  get 'users'     => 'users#index'
  post 'users'    => 'users#create'
  get 'new_user'  => 'users#new'

end
