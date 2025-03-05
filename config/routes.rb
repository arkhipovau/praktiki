Rails.application.routes.draw do
  # Главная страница
  root "pages#home"

  # Ресурсы для контента
  resources :contents do
    resources :comments, only: [:create, :index] # Вложенные маршруты для комментариев
    resources :likes, only: [:create, :destroy]  # Вложенные маршруты для лайков
  end

  # Отдельные ресурсы
  resources :categories
  resources :tags
  resources :notifications, only: [:index, :update]
  resources :analytics, only: [:index]

  # Ресурсы пользователей
  resources :users, only: [:create, :show]
  resources :moderators, only: [:create, :index]

  # API-пространство имён
  namespace :api do
    resources :contents, only: [:index, :show]
  end
end

