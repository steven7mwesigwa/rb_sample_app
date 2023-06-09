Rails.application.routes.draw do
  get '/home', to: 'static_pages#home', as: 'home'
  get '/help', to: 'static_pages#help',  as: 'help'
  get '/about', to: 'static_pages#about', as: 'about'
  get '/contact', to: 'static_pages#contact', as: 'contact'
  get '/signup', to: 'users#new', as: 'signup'
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy", as: 'logout'
  resources :users
  # URL: /account_activation/<token>/edit ; ACTION: edit ; NAMED ROUTE: edit_account _activation_url(token)
  resources :account_activations, only: [:edit]
  # get '/login', to: 'static_pages#login', as: 'login'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "static_pages#home"
end
