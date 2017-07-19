Rails.application.routes.draw do

  root to: 'pages#home'

  devise_for :users, :admins

  resources :users
  resources :students
  put 'admin/:id' => 'pages#make_admin', :as => "make_admin"
  put 'student/:id' => 'pages#make_student', :as => "make_student"

end
