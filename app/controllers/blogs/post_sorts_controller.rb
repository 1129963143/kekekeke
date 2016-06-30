class Blogs::PostSortsController < ApplicationController
  before_action :set_post_sort, only: [:destroy]
  def index
    @post_sorts = Blogs::Sort.all
  end

  def new
    @blogs_post_sort = Blogs::Sort.new
  end

  def create
    @post_sort = Blogs::Sort.new(create_params)
    respond_to do |format|
      if @post_sort.save
        flash[:alert]= "博客分类　#{@post_sort.name} 添加成功。"

        format.js
        format.json{ render json: @post_sort, status: :created}
      else
        format.js
      end
    end
  end

  def destroy
    respond_to do |format|
      if @post_sort.delete
        flash[:alert]= "分类　#{@post_sort.name} 已删除！"
        format.json{ render json: @post_sort, status: :created}
      else
        format.js
      end
    end
  end

  private
  def set_post_sort
    @post_sort = Blogs::Sort.find(params[:id])
  end

  def create_params
    params.require(:blogs_sort).permit(:name)
  end
end
