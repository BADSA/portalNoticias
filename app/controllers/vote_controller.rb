class VoteController < ApplicationController

	def vote
		@vote = Vote.where('postId = ? and userId = ?', params[:postId].to_i, current_user.id)
		action = params[:actionType]
		if action.to_i == 2 && @vote.size >= 1
			@post = Post.find(params[:postId])
			@post.votes -= 1
			@post.save
			@vote.each do |v|
				v.delete
			end 
		elsif action.to_i == 1 && @vote.size == 0
			@newVote = Vote.new
			@newVote.postId = params[:postId]
		    @newVote.userId = current_user.id
		    @post = Post.find(params[:postId])
			@post.votes += 1
			@post.save
		    if @newVote.save
		    	render json: @newVote
		    	return
		    end
		end
		render text: "Aqui hay algo"
	end
end
