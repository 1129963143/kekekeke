class Blogs::PostsController < ApplicationController
  def index
  end

  def new
    @post = Blogs::Post.new
  end

  def create
    @post = Blogs::Post.new(create_params)
    if @post.save
      redirect_to blogs_post_path(@post)
    end
  end

  def show
  end

  private
  def create_params
    params.require(:post).permit(:content)
  end
  def set_post
    @post = Blogs::Post.find(params[:id])
  end
end
