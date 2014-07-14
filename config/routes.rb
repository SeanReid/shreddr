Rails.application.routes.draw do
  root to: 'message#new'
  resources :user
  resources :message
  post '/message/new' => 'message#new', as: 'messages'
  get 'message/index' => 'message#index'
  # get "message/:id/edit" => "message#edit"
  # get ":name" => "user#show", as: "message_status"

end
