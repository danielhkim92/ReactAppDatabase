class ApplicationController <  Sinatra::Base
	
	require 'bundler'
	Bundler.require
	register Sinatra::CrossOrigin
	register Sinatra::ActiveRecordExtension


	ActiveRecord::Base.establish_connection(
		:adapter => 'postgresql',
		:database => 'project',
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
		@types = Type.all
		@types.to_json

	end

	get '/:id' do
		@type = Type.find_by(id: params[:id])
		@type

	end

	post '/' do
		@type = Type.new
		@type.title = params[:title]
		@type.youtubelink1 = params[:youtubelink1]
		@type.youtubelink2 = params[:youtubelink2]
		@type.youtubelink3 = params[:youtubelink3]
		@type.intro = params[:intro]
		@type.conclusion = params[:conclusion]
		@type.save
		@types = Type.all
		@types.to_jason
		"saved"
	end

	delete '/:id' do 
		@type = Type.find_by(id: params[:id])
		@type.delete
		@type.save
		'deleted'
	end

	put '/:id' do
		@type = Type.find_by(id: params[:id])
		@type.title = params[:title]
		@type.youtubelink1 = params[:youtubelink1]
		@type.youtubelink2 = params[:youtubelink2]
		@type.youtubelink3 = params[:youtubelink3]
		@type.intro = params[:intro]
		@type.conclusion = params[:conclusion]
		@type.save
		@types = Type.all
		@types.to_jason
		"put"
	end


end

