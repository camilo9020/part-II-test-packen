Rails.application.routes.draw do




 

  resources :subscribers
  root 'pages#index'
  get 'admin' => 'admin/dashboard#index'


  namespace :admin do
    resource :dashboard, only: [:index]
    resources :users
    
  end



  #devise_for :user

  devise_for :users
  
end
