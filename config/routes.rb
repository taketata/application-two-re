Rails.application.routes.draw do
  root 'homes#top'
  get 'homes' => 'homes#about',as:'about'
  devise_for :users
  resources:users,only:[:index,:show,:edit,:update]
  resources:books,only:[:index,:show,:edit,:create,:destroy,:update]
end
