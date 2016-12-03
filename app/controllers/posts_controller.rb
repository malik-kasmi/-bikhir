class PostsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :index, :show]

  def index
    @posts = Post.order("id DESC").all
  end

  def show
    @post = Post.find(params[:id])
    redirect_to owner_post_path(@post) if @post.owner == current_user
  end

end
