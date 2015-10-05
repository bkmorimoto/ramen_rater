class PostsController < ApplicationController

  def index
    @posts = Post.all
    @ramens = Ramen.all
    @post = Post.new
  end

  def create
    post = Post.create(post_params)
    post.user = User.find(1)
    post.save

    if request.xhr?
      render partial: 'post', locals: {post: post}, layout: false
    else
      redirect_to root_path
    end
  end

  private

  def post_params
    params.require(:post).permit(:ramen_id, :rating, :description)
  end

end
