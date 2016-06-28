class Blogs::PostsController < ApplicationController
  before_action :set_post, only: [:show,:edit, :update]
  def index
    @posts = Blogs::Post.all
  end

  def new
    @post = Blogs::Post.new
  end

  def create
    @post = Blogs::Post.new(create_params)
    @post.user = current_user
    if @post.save
      redirect_to blogs_post_path(@post),notice: '恭喜，创建成功！'
    else
      redirect_to :back, flash: {error: '对不起，创建失败，你必须重新检测以下。'}
    end
  end
  def edit
    render :new
  end
  def update
    if @post.update(update_params)
      redirect_to action: :show
    end
  end
  def show
    @title = TitleStyle.new(@post.title,'show-blog_title','http://img.blog.163.com/photo/mlYY1Lc4KiJ_iOfRk6dxYQ==/1442559255642204902.jpg')
    @blog_comment = Blogs::Comment.new
    @blog_comments = Blogs::Comment.where(blogs_post: @post).order(created_at: :desc)
  end

  private
  def create_params
    params.require(:blogs_post).permit(:content, :title)
  end
  def update_params
    params.require(:blogs_post).permit(:content)
  end
  def set_post
    @post = Blogs::Post.find(params[:id])
  end
end
