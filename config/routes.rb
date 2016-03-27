Rails.application.routes.draw do

  get "news/:id" => 'news#show'
  
  namespace :admin do
    resources :users
    resources :articles
    resources :artists
    resources :events
    resources :plans
    resources :tickets
    resources :venues
    resources :sponsors
    resources :bands
    resources :comedians
    resources :visitors
    resources :features
    root to: "users#index"
  end

  devise_for :users
  root to: "misc#home"
  get "events/list" => 'events#index'
  get "artists/list" => "artists#index"
  get "artists/list/comedians" => "artists#index_comedians"
  get "sidebar/events" => 'sidebars#events'
  get "sidebar/artists/:id" => "sidebars#artists"
  get "venues/list" => "venues#index"
  get "news" => 'news#index'
end
