class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    cat = params[:category]
    if  cat!= 'Home' and cat!=nil
      @posts = Post.where(:category => cat ).where(:status => "accepted" )
    else
      keywords = params[:keywords]
      if keywords!=nil
        where_clause = "( title LIKE ? OR description LIKE ? OR content LIKE ?)"
        @posts = Post.where(where_clause, '%'+keywords+'%','%'+keywords+'%','%'+keywords+'').where(:status => "accepted" )  
      else
        @posts = Post.where(:status => "accepted" )
      end
    end
    
    render :layout => false
  end

  def manage
    action = params[:acti]
    justif = params[:justification]
    id = params[:id]
    @post = Post.find(id)
    @post.status = action
    if action=='rejected'
      @post.justification = justif
    end
    @post.save
    render text: "Succesful"
  end

  def rootuser
    iden = params[:ide]
    adm = params[:adm]
    @user = User.find(iden)
    if adm=="yes"
      @user.manager = true
    else
      @user.manager = false
    end
    @user.save
    render text: "Succesful"
  end



  def makemanager
    @users = User.where(:manager => false)
    render :layout => false
  end



  def show
    respond_with(@post)
  end

  def new
    @post = Post.new
    respond_with(@post)
  end

  def edit
  end

  def create
    @post = Post.new(post_params)
    if current_user.manager==false
      @post.status = "pending"
    else
      @post.status = "accepted"
    end
    @post.userId = current_user.id
    @post.votes = 0
    @post.numComments = 0
    @post.save
    respond_with(@post)
  end

  def update
    @post.update(post_params)
    respond_with(@post)
  end

  def destroy
    @post.destroy
    respond_with(@post)
  end

  private
    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:title, :description, :content, :link, :userId, :date, :category, :votes, :numComments, :status)
    end
end