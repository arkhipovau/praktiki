Rails.application.routes.draw do
  # Основные ресурсы
  resources :contents do
    resources :comments, only: [:create, :index]
    resources :likes, only: [:create, :destroy]
  end

  resources :categories
  resources :tags
  resources :notifications, only: [:index, :update]
  resources :analytics, only: [:index]

  resources :users, only: [:create, :show]
  resources :moderators, only: [:create, :index]

  # API namespace
  namespace :api do
    resources :contents, only: [:index, :show]
  end

  # Корневой маршрут (можно поменять контроллер и экшен)
  root "contents#index"
end

