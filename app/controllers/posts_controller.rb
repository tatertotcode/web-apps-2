class PostsController < ApplicationController

  def index
    # find all Post rows
    @posts = Post.all
    # render posts/index view
  end

  def new
    # render posts/new view with new Post form
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to "/posts"
    else
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:author, :body, :image)
  end


end
