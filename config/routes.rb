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
    get "/faq" => 'info#faq'
    get "/about" => 'info#about'
    get '/hotels' => 'info#hotels'
    get '/volunteers' => 'info#volunteers'
    get "/news" => 'news#index'
    get "/news/:id" => "news#show", as: :news_article
    get "/sponsors" => "sponsors#index"
    get "/venues" => "venues#index"
end
