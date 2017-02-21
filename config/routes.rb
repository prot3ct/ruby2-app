Rails.application.routes.draw do
	root 'visits#index'
	
	post '/articles', to: 'articles#create'
	get '/articles/:id', to: 'articles#find'
	get '/articles', to: 'articles#show'

	get '/visits',  to: 'visits#show'
	post '/visits', to: 'visits#create'
end