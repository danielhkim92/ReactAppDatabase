class ApplicationController <  Sinatra::Base
	
	require 'bundler'
	Bundler.require
	register Sinatra::CrossOrigin
	register Sinatra::ActiveRecordExtension


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


	set :views, File.expand_path('../views', File.dirname(__FILE__))

		get '/' do
		@types = Types.all
		@types.to_json

	end

	get '/:id' do
		@type = Types.find_by(id: params[:id])
		@type

	end

	post '/' do
		@type = Types.new
		@type.name = params[:name]
		@type.save
		@type = Types.all
		@type.to_jason
		"saved"
	end

	delete '/:id' do 
		@type = Types.find_by(id: params[:id])
		@type.delete
		@type.save
		'deleted'
	end

		put '/:id' do
		@type = Types.find_by(id: params[:id])
		@type.name = params[:name]
		@type.priority = params[:priority]
		@type.save
		"put"
	end



end