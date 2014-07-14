Rails.application.routes.draw do
  devise_for :users
  root to: 'message#index'
  resources :user
  resources :message
  get '/message/new' => 'message#new', as: 'messages'
  post '/message/new' => 'message#create'
  get 'message/create'
  # get "message/:id/edit" => "message#edit"
  # get ":name" => "user#show", as: "message_status"

end
