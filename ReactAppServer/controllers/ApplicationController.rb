class ApplicationController <  Sinatra::Base
	
	require 'bundler'
	Bundler.require
	register Sinatra::CrossOrigin
	register Sinatra::ActiveRecordExtension


	ActiveRecord::Base.establish_connection(
		:adapter => 'postgresql',
		:database => 'todo',
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
		@tasks = Todo.all
		@tasks.to_json

	end

	get '/:id' do
		@task = Todo.find_by(id: params[:id])
		@task

	end

	post '/' do
		@task = Todo.new
		@task.name = params[:name]
		@task.save
		@task = Todo.all
		@items.to_jason
		"saved"
	end

	delete '/:id' do 
		@task = Todo.find_by(id: params[:id])
		@task.delete
		@task.save
		'deleted'
	end



end