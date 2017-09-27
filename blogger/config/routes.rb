# Rails.application.routes.draw do
#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# end

Blogger::Application.routes.draw do

  #puts the root at the index
  root to: 'article#index'

  # should always use routes RESTful convenction
  resources :articles
end
