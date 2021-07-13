Rails.application.routes.draw do
  devise_for :users
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :posts, only: [ :index ]
      resources :users, only: [ :index ]
    end
  end
end
