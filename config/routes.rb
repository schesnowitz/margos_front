Rails.application.routes.draw do
  resources :videos
  get 'pages/index'
  get 'pages/show'
  
  root to: "pages#index" 
end
