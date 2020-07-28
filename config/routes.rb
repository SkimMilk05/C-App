Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  if signed_in?
    root 'navigation#index' #setting root page as navigation
  else
    root 'general#index'
  end

  get '/' => 'navigation#index', as: 'navigation'
  get '/practice' => 'practice#index', as: 'practice'


end
