Rails.application.routes.draw do
  # get 'courses/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get "/courses", to: "courses#index"
  # get "/courses/:id", to: "courses#show"
  
  root "main#index"
  resources :courses
  # resources :grades
  get "/grades", to: "grades#index"
  get "grades/new", to: "grades#new"
  get "/grades/:sid", to: "grades#show", as: "grade"
  post "/grades", to: "grades#create"
  get "/grades/:sid/show_checkboxes", to: "grades#show_checkboxes", as: :show_checkboxes_grades
  get "grades/:id/edit", to: "grades#edit", as: :edit_grade
  patch "/grades/:id", to: "grades#update", as: :update_grade
  delete "/grades/:sid", to: "grades#destroy", as: :delete_grades
  
end
