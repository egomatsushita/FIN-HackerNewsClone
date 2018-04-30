Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'top_stories/index'
  get 'top_stories/show'

  get '/newest', to: 'newest_stories#index'

  root 'top_stories#index'
end
