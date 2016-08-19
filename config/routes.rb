Rails.application.routes.draw do




  resources :subscribers
  root 'pages#index'
  get 'admin' => 'admin/dashboard#index'

  
end
