Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :atendimentos do
    collection { post :import }
    end
  resources :areas

  resources :atendentes

  resources :usuarios

  resources :clientes

  root to: 'admin/dashboard#index'
  devise_for :users
  resources :users
  
end

