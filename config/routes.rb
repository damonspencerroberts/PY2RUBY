Rails.application.routes.draw do
  root to: 'pages#home'
  get "/search", to: "pages#search", as: "search_results"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :use_cases, only: [:index, :show]
  resources :articles, only: [:index]
end
