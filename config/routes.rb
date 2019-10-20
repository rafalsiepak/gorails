Rails.application.routes.draw do

  resources :communities do
    resource :subscriptions

  end

  resources :submissions do
    resources :comments do
      member do
        put "upvote", to: "submissions#upvote"
        put "downvote", to: "submissions#downvote"
      end
    end
  end

  devise_for :users
  resources :users, only: [:show], as: "profile"
  root to: "submissions#index"
end
