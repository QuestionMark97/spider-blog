Rails.application.routes.draw do

	# Pages routes
	root 'pages#home'
	get 'about' => 'pages#about'

	# Articles routes
	resources :articles do
		resources 'comments', except: [:new, :show, :index]
	end

	# Users routes
	get 'signup' => 'users#new'
	resources :users, except: [:new]

	# Sessions routes
	get 'login' => 'sessions#new'
	post 'login' => 'sessions#create'
	delete 'logout' => 'sessions#destroy'

	# Categories routes
	resources :categories, except: [:destroy]
	
end