Rails.application.routes.draw do
  get 'hello_world', to: 'hello_world#index'
  resources :photos
  get '/photos' => 'photos#index'

  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
