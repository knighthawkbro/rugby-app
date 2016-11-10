Rails.application.routes.draw do
  
  # resources :static_pages
  
  get 'users/new'

  # Sets the default homepage when users access https://rugby-project-bradywalsh.c9users.io
  root 'static_pages#home'
  
  # Changed the default URL/PATH of the Static pages
  get '/about',     to: 'static_pages#about'
  get '/contact',   to: 'static_pages#contact'
  get '/schedule',  to: 'static_pages#schedule'
  get '/roster',    to: 'static_pages#roster'
  get '/media',     to: 'static_pages#media'
  get '/awards',    to: 'static_pages#awards'
end
