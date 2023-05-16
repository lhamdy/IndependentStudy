Rails.application.routes.draw do
  # get 'courses/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get "/courses", to: "courses#index"
  # get "/courses/:id", to: "courses#show"
  
  resources :courses
  # resources :grades
  get "/grades", to: "grades#index"
  get "grades/new", to: "grades#new"
  get "/grades/:sid", to: "grades#show"
  
end
