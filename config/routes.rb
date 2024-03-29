Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "pages#home"
  get 'maintenance', to: 'prestations#maintenance'
  resources :prestations
  resources :buyings, only: %i[index create new destroy]
end
