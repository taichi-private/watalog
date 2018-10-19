Rails.application.routes.draw do
  root to: 'top#index'
  resources :article, only: %i[index show]
end
