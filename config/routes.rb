Rails.application.routes.draw do
  devise_for :users
  root to: 'emotions#index'

  resources :emotions do
    resources :corgis
  end

  # NHO: looks like you are only using some of the routes from this resource, recommend limiting the routes exposed
  # for example no support for `/corgis`
  resources :corgis do
    resources :comments # NHO: again, would limit the routes exposed since there is no support for an 'index' of all comments
  end
end
