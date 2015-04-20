class HomeController < ApplicationController
  def index
    @posts = Post.all
    @categories = Category.all
    #@users = User.new
  end
end
