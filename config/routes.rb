Rails.application.routes.draw do
  root "pages#home"

  resources :contents do
    resources :comments, only: [:create, :index]
    resources :likes, only: [:create, :destroy]
  end

  resources :categories
  resources :tags
  resources :notifications, only: [:index, :update]
  resources :analytics, only: [:index]

  resources :users, only: [:create, :show, :index] do
    member do
      patch "promote"
    end
  end

  namespace :api do
    resources :contents, only: [:index, :show]
  end
end

