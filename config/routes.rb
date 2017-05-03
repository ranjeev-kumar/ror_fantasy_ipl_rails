Rails.application.routes.draw do
resources :teams
devise_for :users
resources :dashboards
root to: 'dashboards#index'
get '/team_register', to: 'dashboards#team_register', as: 'team_registration'
get '/terms_and_conditions', to: 'dashboards#terms_and_conditions', as: 'termsandconditions'
end
