Rails.application.routes.draw do
  get "news" => 'news#index'

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
end
