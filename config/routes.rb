Rails.application.routes.draw do
  resources :previous_grade_data
  resources :fall_courses
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
