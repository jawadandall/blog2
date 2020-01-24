Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'posts#index'	#Designates the index function within the posts controller as the root of the app (home page)

  get 'about' => 'pages#about'	#Maps the get about request to the about function within the pages controller

  resources :posts	#Designates posts as a resource and creates default routes(index, show, new, edit, create, update and destroy) for the posts controller
end
