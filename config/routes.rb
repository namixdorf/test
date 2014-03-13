WebApp::Application.routes.draw do

  root :to => "browse#index"
  get '/index', to: 'browse#index'
  get 'categories', to: 'categories#index', format: :html
  get 'get-inspired', to: 'browse#get_inspired', as: 'get_inspired'
  get 'sitemap', :to => 'browse#sitemap'
  get 'tags/:tag', to: 'tags#index', as: :tag
  get 'finding/index.html', to: 'browse#finding'
  get 'finding', to: 'browse#finding'
  
  namespace :admin do    
    root :to => 'dashboard#index'
    resources :users
    resources :articles
    resources :categories
    resources :category_articles
    resources :videos
    
    resources :sessions
    match 'logout' => 'sessions#logout', :as => :logout
  end

  match ":id/index.html" => 'categories#show'
  match ":category_id/:id.html" => 'articles#show'
  
  
  
  resources :categories, path: "", only:  [:index, :show], defaults: { format: :html } do  
    resources :articles, path: "",  only: [:show], defaults: { format: 'html' }
  end
  
  
  
end
