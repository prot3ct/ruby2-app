Rails.application.routes.draw do
	root 'visits#index'
	
	post '/articles', to: 'article#create'
	get '/articles/id', to: 'article#find'
	get '/articles', to: 'article#show'

	get '/visits',  to: 'visits#show'
	post '/visits', to: 'visits#create'
end