Rails.application.routes.draw do
  devise_for :users

  root to: 'home#index'
  resources :abstracts
  get 'abstract' => 'home#abstract'
  get 'about' => 'home#about'
  get 'fees' => 'home#fees'
  get 'eac' => 'home#eac'
  get 'dates' => 'home#dates'
  get 'tracks' => 'home#tracks'
  get 'cochair' => 'home#cochair'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
