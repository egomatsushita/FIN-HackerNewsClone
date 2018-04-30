Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'top_stories/index'
  get 'top_stories/show'

  get '/newest', to: 'newest#index'
  get '/newest/show'
  
  get '/show', to: 'show#index'
  get '/show/show'

  get '/ask', to: 'ask#index'
  get '/ask/show'

  get '/job', to: 'job#index'
  get '/job/show'

  root 'top_stories#index'
end
