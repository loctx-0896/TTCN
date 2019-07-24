Rails.application.routes.draw do
  scope "(:locale)", locale: /en|vi/ do
    root "static_pages#home"

    get "/home", to: "static_pages#home"
    get "/login", to: "sessions#new"
    post "/login", to: "sessions#create"
    delete "/logout", to: "sessions#destroy"
    get "/cart", to: "carts#index"
    post "/shopping", to: "carts#shopping"
    namespace :admin do
      resources :categories
      resources :products
    end
    resources :products
  end
end
