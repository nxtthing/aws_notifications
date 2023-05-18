Rails.application.routes.draw do
  namespace :aws do
    resources :notifications, only: :create
  end
end
