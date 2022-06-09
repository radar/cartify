Rails.application.routes.draw do
  post "/graphql", to: "graphql#execute"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  defaults format: :json do
    namespace :api do
      resource :shop do
        resources :purchases do
          resource :customer
        end
      end
    end
  end
end
