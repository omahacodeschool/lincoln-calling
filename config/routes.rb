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
  get "events/list" => 'events#index'
  get "artists/list" => "artists#index"
  get "sidebar/events" => 'sidebars#events'
end
