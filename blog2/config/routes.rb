Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  get 'store/index'
	#Routes map to controller actions and may pass parameters. Run $bin/rails routes to see list of available routes
  get 'welcome/index'

  resources :items do
  end
  resources :articles do	#Declares articles as a REST resource, creating the standard RESTful routes
  	resources :comments		#Creates comments as a nested resource within articles
  end
  root 'welcome#index'
end
