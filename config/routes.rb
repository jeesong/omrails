Omrails::Application.routes.draw do
  resources :pins


  devise_for :users

  get 'about' => 'pages#about'
  root :to => 'pages#home'
end
