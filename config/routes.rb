Rails.application.routes.draw do
  
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
    resources :faqs
    resources :abouts
    root to: "users#index"
  end

  devise_for :users
  root to: "misc#home"
  get "artists/list" => "artists#index"
  get "artists/list/comedians" => "artists#index_comedians"
  post "artists/search" => "artists#search"
  get "events/list" => 'events#index'
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
  post "notifications/plan_my_festival" => "notifications#plan_my_festival"
end
