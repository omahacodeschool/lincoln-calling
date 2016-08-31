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
        resources :visitor_guides
        root to: "features#index"
    end

    devise_for :users
    root to: "misc#home"
    get "/artists" => "artists#index"
    post "/artists/search" => "artists#search"
    post "/artists/:id" => "artists#show"
    post "/artists/:id/prev" => "artists#prev"
    post "/artists/:id/next" => "artists#next"
    get "/comedy" => "artists#index_comedians"
    get "/schedule" => 'events#index'
    get "/schedule/:day" => 'events#index'
    # get "/artists/genres/:id" => 'genres#view'
    # get "/visitors" => 'visitor_guides#index'
    # get "/visitors/:id" => 'visitor_guides#show', as: :visitors_article
    get "/faq" => 'info#faq'
    get "/about" => 'info#about'
    get '/hotels' => 'info#hotels'
    get "news" => 'news#index'
    get "news/:id" => "news#show", as: :news_article
    # get "sidebar/events" => 'sidebars#events'
    # get "sidebar/artists" => "sidebars#artists"
    get "sponsors" => "sponsors#index"
    get "venues" => "venues#index"
    # post "notifications/plan_my_festival" => "notifications#plan_my_festival"
end
