Rails.application.routes.draw do
  scope path: '/api' do
		resources :houses
		resources :apartments

		get '/properties/types', to: 'properties#types'
		get '/properties/find', to: 'properties#find'
		post '/images/upload', to: 'images#create'
  		# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	end
end
