Rails.application.routes.draw do
  resources :gossips do
    resources :comments
  end
  root to: 'gossips#home'
end
