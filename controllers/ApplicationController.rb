class ApplicationController <  Sinatra::Base
	
	require 'bundler'
	Bundler.require


	ActiveRecord::Base.establish_connection(
		:adapter => 'postgresql',
		:database => 'personalitytypes',
		)

	configure do
	  enable :cross_origin
	end

	set :allow_origin, :any
	set :allow_credentials, true
	set :allow_methods, [:get, :post, :options, :delete]
	


	options "*" do
	 response.headers["Allow"] = "HEAD, GET, PUT, POST, DELETE, OPTIONS"
	 response.headers["Access-Control-Allow-Headers"] = "X-Requested-With, X-HTTP-Method-Override, Content-Type, Cache-Control, Accept"
	 
	end

	get ('/') do
		"Hello this is the application controller"
	end
end

