Rails.application.routes.draw do

	# Pages controller
	root 'pages#home'
	get 'about', to: 'pages#about'

	# Articles controller
	resources :articles

	# Users controller
	get 'signup', to: 'users#new'
	resources :users, except: [:new]

	# Sessions controller
	get 'login', to: 'sessions#new'
	post 'login', to: 'sessions#create'
	delete 'logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end