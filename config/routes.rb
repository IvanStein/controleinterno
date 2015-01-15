Rails.application.routes.draw do
  resources :atendimentos do
    collection { post :import }
    end
  resources :areas

  resources :atendentes

  resources :usuarios

  resources :clientes

  root to: 'users#index2'
  devise_for :users
  resources :users
  
end

