Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'navigation#index' #setting root page as navigation

  get '/' => 'navigation#index', as: 'navigation'
  get '/practice' => 'practice#index', as: 'practice'


end
