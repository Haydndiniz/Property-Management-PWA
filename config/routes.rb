Rails.application.routes.draw do
  resources :tenants
  resources :properties do
    resources :units
  end
  devise_for :users
  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    get 'signup', to: 'devise/sessions#new'
  end
  # resources :users, controller: {registrations: 'users/registrations'}
  resources :users, controller: "users"
  root to: 'dashboards#index'
end
