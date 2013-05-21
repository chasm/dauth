Dauth::Application.routes.draw do
  authenticated :user do
    root :to => "home#index"
  end

  resources :articles do
    resources :comments, only: [ :edit, :create, :update, :destroy ]
  end
  
  root :to => "home#index"
  
  devise_for :users
  resources :users, only: [ :index, :show ]
  
  devise_scope :user do
    delete "users/sign_out", :to => "devise/sessions#destroy"
  end
end
