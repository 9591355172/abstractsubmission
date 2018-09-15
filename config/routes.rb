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
  get 'express_checkout' => 'home#express_checkout'
  get 'comingup' => 'home#comingsoon'
  get 'unglobal' => 'home#unglobal'
  get 'prme' => 'home#prme'
  get 'spjimr' => 'home#spjimr'
  get 'details' => 'home#details'
  get 'docapp' => 'home#docapp'
  get 'forum' => 'home#forum'
  get 'contactus' => 'home#contact'
  get 'organizingcomittee' => 'home#org'
  get 'workshopdetails' => 'home#workshopdetails'
  get 'trackdetails' => 'home#trackdetails'
  get 'application' => 'home#application'
  get 'trackchairs' => 'home#trackchairs'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
