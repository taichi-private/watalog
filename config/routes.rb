Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'top#index'
  resources :article, only: %i[index show]
  resources :tag, only: %i[index show]
end
