Rails.application.routes.draw do
  get 'sessions/new'
  post 'sessions/signin'
  delete 'sessions/logout'
  get 'sessions/forgot_password'
  put 'sessions/reset_password'

  resources :users, only: [:new, :create]

  root to: "home#index"
end
