Rails.application.routes.draw do
  resources :business_goals
  resources :business_questions
  resources :businesses
  resources :business_types
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
