class CommentsController < ApplicationController
	def create
      @comment = Comment.new
	    @comment.content = params[:comment]
	    @comment.postId = params[:postId]
      @comment.userId = current_user.id
      if @comment.save
        @post = Post.find(params[:postId])
        @post.numComments += 1
        @post.save
        render text: @comment.created_at.strftime('%d %b %Y %I:%M %p')
        #redirect_to url_for(:controller => :comments, :action => :lastComment, id: @comment.id)
      end
    end

    def destroyComment
      @comment = Comment.find(params[:id])
      @comment.delete
      @post = Post.find(params[:postId].to_i)
      @post.numComments -=1
      @post.save
      render text: 'Eliminado con exito'
    end
end
