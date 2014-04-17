Palate::Application.routes.draw do

  get 'new_user'  => "users#new"

  scope :api do
    get '' => "api#index", as: :api, defaults: {format: :json}

    resources :users, except: [ :edit, :new ], defaults: {format: :json} do
      get ':id' => "users#show", on: :collection
    end
  end

end
