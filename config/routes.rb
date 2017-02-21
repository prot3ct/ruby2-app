Rails.application.routes.draw do
	root 'visits#index'
	
	post '/articles', to: 'articles#create'
	get '/articles/:id', to: 'articles#find'
	get '/articles', to: 'articles#show'

	post '/comments', to: 'comments#create'
	get '/comments/:id', to: 'comments#find'
	get '/comments', to: 'comments#show'


	get '/visits',  to: 'visits#show'
	post '/visits', to: 'visits#create'
end