Rails.application.routes.draw do
  scope "(:locale)", locale: /en|vi/ do
    root "static_pages#home"
    get "/rooms", to: "static_pages#rooms"
    get "/about_us", to: "static_pages#about_us"
    get "/blog", to: "static_pages#blog"
    get "/contact", to: "static_pages#contact"
    get "/signup", to: "users#new"
    get "/login", to: "sessions#new"
    post "/login", to: "sessions#create"
    delete "/logout", to: "sessions#destroy"
    resources :room_types
    resources :room_types
    resources :users
    namespace :admin do
      root to: "static_pages#index"
      resources :room_types
      resources :bookings
      resources :users
      resources :static_pages
    end
  end
end
