Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'tab',to: "welcome#tab"
  root 'welcome#index'
  resources :jobs
  resources :users
  namespace :admin do
    resources :users
  end
end
