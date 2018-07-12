Rails.application.routes.draw do
  resources :videos
  get 'pages/index'
  get 'pages/show'
  
  root to: "pages#index" 


  require 'sidekiq/web'
  require 'sidekiq/cron/web'
  mount Sidekiq::Web => '/sidekiq'
end
