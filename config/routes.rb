Rails.application.routes.draw do
  namespace :Api do
    namespace :V1 do
      resources :products
      resources :categories
    end
  end
end
