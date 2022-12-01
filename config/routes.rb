Rails.application.routes.draw do
  get 'login', to: 'users#login', as: 'user_login'
  post 'login', to: 'users#login', as: 'login'
end
