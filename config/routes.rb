Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'home#index'

  resources :jobs, only: [:index, :show, :new, :create, :destroy]
  resources :users, only: [:index, :show, :new, :create]
  resources :comments, only: [:create, :destroy]


  scope "(:locale)", locale: /en|fr/ do
    root to: 'home#index'
  end

  if Rails.env.development?
    get '404', :to => 'application#page_not_found'
    get '422', :to => 'application#server_error'
    get '500', :to => 'application#server_error'
  end

end
