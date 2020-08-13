Rails.application.routes.draw do
  resources :image_sets
  resources :blue_areas
  resources :green_areas
  resources :image_sessions
  resources :images
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  ##clearance default ###################################################
  Clearance.configure do |config|
    config.routes = false
  end

  resources :passwords,
  controller: 'clearance/passwords',
  only: [:create, :new]

  resource :session,
  controller: 'clearance/sessions',
  only: [:create]

  resources :users,  #had to change this for users
  controller: 'users',
  only: Clearance.configuration.user_actions do
    resource :password,
    controller: 'clearance/passwords',
    only: [:edit, :update]
  end

  get '/sign_in' => 'clearance/sessions#new', as: 'sign_in'
  delete '/sign_out' => 'clearance/sessions#destroy', as: 'sign_out'

  if Clearance.configuration.allow_sign_up?
    get '/sign_up' => 'clearance/users#new', as: 'sign_up'
  end
  #################################################################


  #when you're signed in
  constraints Clearance::Constraints::SignedIn.new do
    root to: 'navigation#index', as: :signed_in_root #root page is dashboard
  end

  #when you're signed out
  constraints Clearance::Constraints::SignedOut.new do
    root to: 'general#index'
  end

  get '/glossary' => 'navigation#glossary', as: 'glossary'


end
