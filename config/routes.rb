Rails.application.routes.draw do
  root to: 'tweets#toppage'

  resources :tweets, except: [:show] do
    collection do
      get :toppage
    end
  end
end
