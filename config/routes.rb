Rails.application.routes.draw do
  namespace :admin do
    resources :users
    resources :matches
    resources :players
    resources :points
    resources :teams
    resources :team_player_scores
    resources :user_teams

    root to: "users#index"
  end

resources :teams
devise_for :users
resources :dashboards
root to: 'dashboards#index'
get '/team_register', to: 'dashboards#team_register', as: 'team_registration'
get '/terms_and_conditions', to: 'dashboards#terms_and_conditions', as: 'termsandconditions'
end
