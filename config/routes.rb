Omrails::Application.routes.draw do
  resources :pins


  devise_for :users

  get 'about' => 'pages#about'
  root :to => 'pins#index'
end
