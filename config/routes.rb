Rails.application.routes.draw do
  resources :units
  devise_for :users
  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    get 'signup', to: 'devise/sessions#new'
  end
  root to: 'dashboards#index'
end
