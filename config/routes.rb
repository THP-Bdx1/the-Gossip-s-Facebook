Rails.application.routes.draw do
  root to: 'static_pages#home'
  get '/login',   to: 'registrations#new'
    post '/login',   to: 'registrations#create'
    delete '/logout',  to: 'registrations#destroy'

resources :users do

  
  resources :gossips do# do
    #   resources :commentofcomments
    # end
    #resources :likes
    resources :comments
end
 

end
end