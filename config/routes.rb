Rails.application.routes.draw do

	# Pages routes
	root 'pages#home'
	get 'about' => 'pages#about'

	# Articles routes
	resources :articles

	# Users routes
	get 'signup' => 'users#new'
	resources :users, except: [:new]

	# Sessions routes
	get 'login' => 'sessions#new'
	post 'login' => 'sessions#create'
	delete 'logout' => 'sessions#destroy'

	# Categories routes
	resources :categories, except: [:destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end