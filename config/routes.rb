Rails.application.routes.draw do
  get 'reviews/index'

  get 'persons/index'

  get 'welcome/Index'

  resources :articles do
    resources :comments
  end
  resources :reviews

  root 'welcome#Index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
