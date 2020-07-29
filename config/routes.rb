Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

#when you're signed in
  constraints Clearance::Constraints::SignedIn.new do
    root to: 'navigation#index', as: :signed_in_root #root page is dashboard
    get '/practice' => 'practice#index', as: 'practice'
  end

#when you're signed out
  constraints Clearance::Constraints::SignedOut.new do
    root to: 'general#index'
  end




end
