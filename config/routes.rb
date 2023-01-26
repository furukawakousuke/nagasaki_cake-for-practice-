Rails.application.routes.draw do
  namespace :admin do
    root to:'homes#top'
    resources :orders,only: [:show,:update]
    resources :customers,only: [:index,:show,:edit,:update]
    resources :genres,only: [:index,:edit,:create,:update]
    resources :items,only: [:index,:show,:edit,:new,:create,:update]
    
  end
  
  scope module: :public do
    root to:'homes#top'
    get 'about' => 'homes#about'
    resources :addresses,only: [:index,:edit]
    get 'orders/complete'
    resources :orders,only: [:new,:index,:show,:create]
    resources :cart_items,only: [:index,:update,:destroy,:create]
    get 'customers/unsubscribe'
    resources :customers,only: [:show,:edit,:update]
    resources :items,only: [:index,:show]
  end
  
  devise_for :customers,controllers:{
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }
  devise_for :admins,controllers:{
     sessions: "admin/sessions"
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
