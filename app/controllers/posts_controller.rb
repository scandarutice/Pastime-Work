class PostsController < ApplicationController
  def index
    @post = Post.new
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)

  end

  def destoroy
  end


  private
  def post_params
    params.require(:post).permit(:title, :content)
  end

end
