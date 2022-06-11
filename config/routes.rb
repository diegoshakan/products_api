Rails.application.routes.draw do
  post '/auth/login', to: 'authentication#login'

  namespace :api do
    namespace :v1 do
      resources :categories
      resources :colors
      resources :products
      resources :product_variations
      resources :sizes
      resources :sub_categories
      resources :type_users
      resources :users, param: :_username
    end
  end
end
