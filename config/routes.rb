Omrails::Application.routes.draw do
  resources :text_pins


  resources :pins
  resources :comments


  devise_for :users

  get 'about' => 'pages#about'
  get 'all' => 'pages#all'
  get '/pins/new/:pintype' => 'pins#new'
  root :to => 'pins#index'
end
