Rails.application.routes.draw do
  root to: 'message#index'
  resources :user
  resources :message
  # get "message/:id/edit" => "message#edit"
  get "message/new" => "message#new"
  # get ":name" => "user#show", as: "message_status"

end
