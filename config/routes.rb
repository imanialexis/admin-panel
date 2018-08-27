Rails.application.routes.draw do

  root to: 'homepage#home'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



resources :courses
resources :cohorts
resources :students
resources :instructors
resources :admin

post "/courses/new" => "courses#create"
end
