Rails.application.routes.draw do
  devise_for :users
  root to: "pages#legal"
  resources :profiles, only: [:index]
  resources :candidates

  get '/profiles/governor' => 'profiles#governor'
  get '/profiles/deputy' => 'profiles#deputy'
  get '/profiles/mayor' => 'profiles#mayor'

  get '/legal' => 'pages#legal'
  get '/rules' => 'pages#rules'
  get '/finance' => 'pages#finance'

  get '/legal/edit' => 'pages#edit_legal'
  get '/rules/edit' => 'pages#edit_rules'
  get '/finance/edit' => 'pages#edit_finance'

  post '/legal/edit' => 'pages#update_legal'
  post '/rules/edit' => 'pages#update_rules'
  post '/finance/edit' => 'pages#update_finance'
end
