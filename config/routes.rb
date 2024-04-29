Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  root 'gossips#index'
  resources :gossips, only: [:index, :show]
  resources :users, only: [:show]

  # Defines the root path route ("/")

  get 'team', to: 'static_pages#team'
  get 'contact', to: 'static_pages#contact'
  get 'welcome/:first_name', to: 'welcome#show', as: 'welcome'
  # root "posts#index"
end
