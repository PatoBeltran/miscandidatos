Rails.application.routes.draw do
  devise_for :users
  root to: "profiles#index"
  resources :profiles, only: [:index]
  resources :candidates do
    post 'toggle_hide' => 'candidates#toggle_hide'
  end
  resources :users, except: [:show]
  resources :political_parties, except: [:show]
  resources :geographical_areas, except: [:show]


  get '/profiles/governor' => 'profiles#governor'
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

  devise_scope :user do
    get "/login" => "devise/sessions#new"
  end
end
