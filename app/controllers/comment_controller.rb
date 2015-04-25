class CommentsController < ApplicationController
	def create
      @comment = Comment.new
	  @comment.content = params[:comment]
	  @comment.postId = params[:postId]
      @comment.user_id = current_user.id
      @comment.date = Date.now
      if @comment.save
        redirect_to url_for(:controller => :home, :action => :index)
      end
    end
end
