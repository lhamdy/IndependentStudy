Rails.application.routes.draw do
  root "fall_courses#index"
  resources :previous_grade_data
  resources :fall_courses
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  get "/fall_courses", to: "fall_courses#index"
  get "/fall_courses/:id", to: "fall_courses#show"
  # Defines the root path route ("/")
  # root "articles#index"
end
