Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants do
    resources :reviews, only: [:create, :new]
  end
  root to: 'restaurants#index'

  namespace :admin do
    resources :restaurants, only: [:index]
  end
end
