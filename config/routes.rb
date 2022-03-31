Rails.application.routes.draw do
  root 'homes#top'
  get 'about' => 'homes#about',as:'about'
  devise_for :users
  resources:users,only:[:index,:show,:edit]
  resources:books,only:[:index,:show,:edit,:create,:destroy]
end
