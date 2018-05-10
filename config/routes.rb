Rails.application.routes.draw do
  devise_for :users,controllers: {sessions: 'users/sessions'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'tab',to: "welcome#tab"
  root 'welcome#index'
  get  '/chatroom' => 'chats#room', :as => :chat
  get '/messages'=>"messages#index",:as=>:messages
  post '/messages'=>"messages#create",:as=>:message_create
  resources :jobs
  resources :users
  namespace :admin do
    resources :users
  end
end
