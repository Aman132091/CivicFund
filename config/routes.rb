Rails.application.routes.draw do
  devise_for :users

  resources :projects do
    resources :budgets, only: [:new, :create]
    resources :allocations, only: [:new, :create]
  end

  namespace :admin do
    resources :reports, only:
    [:index]
  end

  root to: 'projects#index'
end