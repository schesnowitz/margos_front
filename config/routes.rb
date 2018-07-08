Rails.application.routes.draw do
  get 'pages/index'
  get 'pages/show'
  
  root to: "pages#index" 
end
