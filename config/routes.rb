Rails.application.routes.draw do
  get 'static_pages/home', to: 'static_pages#home', as: 'home'
  get 'static_pages/help', to: 'static_pages#help',  as: 'help'
  get 'static_pages/about', to: 'static_pages#about', as: 'about'
  # get 'static_pages/contact', to: 'static_pages#contact', as: 'contact'
  # get 'static_pages/signup', to: 'static_pages#signup', as: 'signup'
  # get 'static_pages/login', to: 'static_pages#login', as: 'login'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "static_pages#home"
end
