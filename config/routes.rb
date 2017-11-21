Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/welcome' => 'pages#welcome'
  get '/about'=> 'pages#about'
  get '/contest'=> 'pages#contest'
  root 'pages#welcome'
  get 'kitten/' => 'pages#kitten'
  get 'kittens' => 'pages#kittens'

  get 'kitten/:size' => 'pages#kitten', as: 'kitty'
  get 'kittens/:size' => 'pages#kittens', as: 'kitties'

  get 'secrets/:magic_word' =>'pages#secrets', as: 'password'

end
