Omrails::Application.routes.draw do
  resources :pins
  resources :comments


  devise_for :users

  get 'about' => 'pages#about'
  get '/pins/new/:pintype' => 'pins#new'
  root :to => 'pins#index'
end
