class Owner::PostsController < ApplicationController

  def index
    @posts = Post.where(owner: current_user)
  end

  def new
    @post = Post.new
    @categories = ["Informatique et multimedia", "Vehicules", "Immobilier", "Habillement", "Emploi","Autre"]
  end

  def create
    @post = Post.new(post_params)
    @post.owner = current_user
    @post.save

    redirect_to owner_post_path(@post)
  end

  def edit
    @post = Post.find(params[:id])
    @categories = ["Informatique et multimedia", "Vehicules", "Immobilier", "Habillement", "Emploi","Autre"]
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)

    redirect_to owner_post_path(@post)
  end


  def show
    @post = Post.find(params[:id])
  end

  def destroy
    @post = post.find(params[:id])
    @post.destroy

    redirect_to owner_posts_path
  end

private

  def post_params
    params.require(:post).permit(:title, :category, :description, :price, :photo, :photo_cache)
  end

end
