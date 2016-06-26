class Blogs::PostsController < ApplicationController
  before_action :set_post, only: [:show]
  def index
  end

  def new
    @post = Blogs::Post.new
  end

  def create
    @post = Blogs::Post.new(create_params)
    if @post.save
      redirect_to blogs_post_path(@post),notice: '恭喜，创建成功！'
    else
      redirect_to :back, flash: {error: '对不起，创建失败，你必须重新检测以下。'}
    end
  end

  def show
    @title = TitleStyle.new(@post.title,'show-blog_title','http://img.blog.163.com/photo/mlYY1Lc4KiJ_iOfRk6dxYQ==/1442559255642204902.jpg')
  end

  private
  def create_params
    params.require(:blogs_post).permit(:content, :title)
  end
  def set_post
    @post = Blogs::Post.find(params[:id])
  end
end
