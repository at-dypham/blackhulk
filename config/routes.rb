Rails.application.routes.draw do
  resources :posts, only: [ :index, :show ]
  resources :blog_settings, only: [ :index ]

  root to: "posts#index"
end
