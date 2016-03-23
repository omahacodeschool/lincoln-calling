Rails.application.routes.draw do
  namespace :admin do
    resources :users
resources :articles
resources :artists
resources :events
resources :plans
resources :tickets
resources :venues

    root to: "users#index"
  end

  devise_for :users
  root to: "misc#home"

  get "artists/list" => "artists#index"
end
