Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'shortened_urls#index'
  get "/:short_url", to: "shortened_urls#show"
  get "shortened/:short_url", to: "shortened_urls#shortened", as: :shortened
  post "/shortened_urls/create"
  get "/shortened_urls/fetch_original_url"
  # Defines the root path route ("/")
  # root "articles#index"
end
