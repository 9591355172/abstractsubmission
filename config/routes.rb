Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  devise_for :users

  root to: 'home#index'
  # resources :payments
  resources :abstracts
  resources :track_detail
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
  get 'sponsorship' => 'home#sponsors'
  get 'schedule' => 'home#schedule'
  get 'hotels' => 'home#hotels'
  get '/tracks/designthinking' => 'track_detail#designthinking'
  get '/tracks/engaging' => 'track_detail#engaging'
  get '/tracks/innovating' => 'track_detail#innovating'
  get '/tracks/extremeevents' => 'track_detail#extremeevents'
  get '/tracks/inequality' => 'track_detail#inequality'
  get '/tracks/management' => 'track_detail#management'
  get '/tracks/social' => 'track_detail#social'
  get '/tracks/sustainability' => 'track_detail#sustainability'
  get '/tracks/sustainbusiness' => 'track_detail#sustainbusiness'
  post 'payments' => 'home#payment'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
