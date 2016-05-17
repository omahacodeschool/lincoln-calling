Rails.application.routes.draw do
  
  namespace :admin do
    resources :abouts
    resources :bands
    resources :comedians
    resources :events
    resources :faqs
    resources :features
    resources :genres
    resources :plans
    resources :sponsors
    resources :tickets
    resources :users
    resources :venues
    resources :visitors
    root to: "users#index"
  end

  devise_for :users
  root to: "misc#home"
  get "artists/list" => "artists#index"
  get "artists/list/comedians" => "artists#index_comedians"
  post "artists/search" => "artists#search"
  get "artists/:artist_id/crop_image" => "artists#crop_image"
  get "events/list" => 'events#index'
  get "genres/:id" => 'genres#view'
  get "info/visitors" => 'visitors#index'
  get "info/visitors/:id" => 'visitors#show', as: :visitors_article
  get "info/faq" => 'info#faq'
  get "info/about" => 'info#about'
  get "news" => 'news#index'
  get "news/:id" => "news#show", as: :news_article
  get "sidebar/events" => 'sidebars#events'
  get "sidebar/artists" => "sidebars#artists"
  get "sponsors/list" => "sponsors#index"
  get "venues/list" => "venues#index"
end
