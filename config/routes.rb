Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  resources :properties do
    resources :units
    resources :maintenance_requests
  end
  devise_for :users
  devise_for :tenants
  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    get 'signup', to: 'devise/sessions#new'
  end
  # resources :users, controller: {registrations: 'users/registrations'}
  # resources :users, controller: "users"
  resources :tenants, controller: "tenants"
  root to: 'dashboards#index'
end
