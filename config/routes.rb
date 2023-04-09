Rails.application.routes.draw do
  resources :patients
  resources :patient_cards
  resources :specializations
  resources :departments
  resources :doctors
  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
