Rails.application.routes.draw do
  get 'posts', to: 'posts#index' 
    # get "search", to: "posts#search"
  resources :posts, only: :index do
    collection do
      get "search"
    end
  
  get "posts/new", to: "posts#new"
  post "posts", to: "posts#create"
  # member do get "search" end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
