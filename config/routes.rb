Rails.application.routes.draw do

  root to: 'pages#home'

  devise_for :users, :admins

  resources :users
  resources :students

  # put(verb), admin/id = the path, pages#make_admin, :as = the action
  put 'admin/:id' => 'pages#make_admin', :as => "make_admin"
  put 'student/:id' => 'pages#make_student', :as => "make_student"
end
