Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :courses
  resources :students
  root "home#index"
  get "about", to: "home#about"
  get "contact", to: "home#contact"
  get "search", to: "courses#search"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
