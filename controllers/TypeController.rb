# class TypeController <  Sinatra::Base



	
# 	get '/' do
# 		@types = Types.all
# 		@types.to_json
		


# 	end

# 	get '/:id' do
# 		@type = Types.find_by(id: params[:id])
# 		@type.to_json
# 	end

# 	post '/' do
# 		@type = Types.new
# 		@type.title = params[:title]
# 		@type.youtubelink1 = params[:youtubelink1]
# 		@type.youtubelink2 = params[:youtubelink2]
# 		@type.youtubelink3 = params[:youtubelink3]
# 		@type.intro = params[:intro]
# 		@type.strengths = params[:strengths]
# 		@type.weaknesses = params[:weaknesses]
# 		@type.emotions = params[:emotions]
# 		@type.romance = params[:romance]
# 		@type.friendships = params[:friendships]
# 		@type.parenthood = params[:parenthood]
# 		@type.career = params[:career]
# 		@type.work = params[:work]
# 		@type.conclusion = params[:conclusion]
# 		@type.save
# 		@type.to_jason
# 		"saved"
# 	end

# 	delete '/:id' do 
# 		@type = Types.find_by(id: params[:id])
# 		@type.delete
# 		@type.save
# 		'deleted'
# 	end

# 		put '/:id' do
# 		@type = Types.find_by(id: params[:id])
# 		@type.title = params[:title]
# 		@type.youtubelink1 = params[:youtubelink1]
# 		@type.youtubelink2 = params[:youtubelink2]
# 		@type.youtubelink3 = params[:youtubelink3]
# 		@type.intro = params[:intro]
# 		@type.strengths = params[:strengths]
# 		@type.weaknesses = params[:weaknesses]
# 		@type.emotions = params[:emotions]
# 		@type.romance = params[:romance]
# 		@type.friendships = params[:friendships]
# 		@type.parenthood = params[:parenthood]
# 		@type.career = params[:career]
# 		@type.work = params[:work]
# 		@type.conclusion = params[:conclusion]
# 		@type.save
# 		@type.to_json
# 		"put"
# 	end



# end