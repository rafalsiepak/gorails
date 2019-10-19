Rails.application.routes.draw do
  resources :communities
  resources :submissions do
    resources :comments
  end
  devise_for :users
  get 'home/index'
  root to: "submissions#index"
end
