Rails.application.routes.draw do
  resources :entries, only: [:show, :create, :update, :destroy]

end
