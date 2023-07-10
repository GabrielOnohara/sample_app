Rails.application.routes.draw do
  # Defines the root path route ("/")
  root 'static_pages#home'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'
  get 'static_pages/contact'

end
