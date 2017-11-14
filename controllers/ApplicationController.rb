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
		@type.youtubelink1 = params[:youtubelink1]
		@type.youtubelink2 = params[:youtubelink2]
		@type.youtubelink3 = params[:youtubelink3]
		@type.intro = params[:intro]
		@type.strengths = params[:strengths]
		@type.weaknesses = params[:weaknesses]
		@type.emotions = params[:emotions]
		@type.romance = params[:romance]
		@type.friendships = params[:friendships]
		@type.parenthood = params[:parenthood]
		@type.career = params[:career]
		@type.work = params[:work]
		@type.conclusion = params[:conclusion]
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