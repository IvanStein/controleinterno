Rails.application.routes.draw do
  resources :atendimentos

  resources :areas

  resources :atendentes

  resources :usuarios

  resources :clientes

  root to: 'users#index'
  devise_for :users
  resources :users
end
