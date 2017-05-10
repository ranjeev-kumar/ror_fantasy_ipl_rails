Rails.application.routes.draw do
  namespace :admin do
    resources :users
    resources :matches
    resources :players
    resources :user_teams
    resources :franchises
    resources :score_cards

    root to: "users#index"
  end

devise_for :users
resources :dashboards
root to: 'dashboards#index'
get '/team_register', to: 'dashboards#team_register', as: 'team_registration'
get '/terms_and_conditions', to: 'dashboards#terms_and_conditions', as: 'termsandconditions'
end
