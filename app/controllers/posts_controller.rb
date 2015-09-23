class PostsController < ApplicationController

  def index
    @posts = Post.all
    @post = Post.new
  end

  def create
    post = Post.create(post_params)
    post.user = User.find(1)
    post.save

    redirect_to root_path
  end

  private

  def post_params
    params.require(:post).permit(:ramen_id, :rating, :description)
  end

end
