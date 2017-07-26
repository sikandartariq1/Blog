Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :projects
  devise_for :people
  get 'reviews/index'

  get 'persons/index'

  get 'welcome/Index'

  namespace :critic do
    resources :reviews
  end

  resources :articles do
    resources :comments
  end

  resources :persons do
  	get 'subordinates', on: :member
  end 

  root 'welcome#Index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
