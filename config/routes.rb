Rails.application.routes.draw do
  
  # Sets the default homepage when users access https://rugby-project-bradywalsh.c9users.io
  root 'static_pages#home'
  
  # old way to add pages to Rails routes, will replace this later.
  get 'static_pages/home'
  get 'static_pages/about'
  get 'static_pages/contact'
  get 'static_pages/schedule'
  get 'static_pages/roster'
  get 'static_pages/media'
  get 'static_pages/awards'
end
