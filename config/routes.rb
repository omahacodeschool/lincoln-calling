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
        root to: "features#index"
    end
    
    devise_for :users
    root to: "misc#home"
    get "lineup/artists" => "artists#index"
    get "lineup/comedy" => "artists#index_comedians"
    post "lineup/artists/search" => "artists#search"
    get "lineup/schedule" => 'events#index'
    get "lineup/artists/genres/:id" => 'genres#view'
    get "info/visitors" => 'visitors#index'
    get "info/visitors/:id" => 'visitors#show', as: :visitors_article
    get "info/faq" => 'info#faq'
    get "info/about" => 'info#about'
    get "news" => 'news#index'
    get "news/:id" => "news#show", as: :news_article
    get "sidebar/events" => 'sidebars#events'
    get "sidebar/artists" => "sidebars#artists"
    get "sponsors" => "sponsors#index"
    get "venues" => "venues#index"
    post "notifications/plan_my_festival" => "notifications#plan_my_festival"
end
