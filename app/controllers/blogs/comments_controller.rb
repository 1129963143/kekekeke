class Blogs::CommentsController < ApplicationController
  def create
    @blog_comment = Blogs::Comment.new(create_params)
    @post = Blogs::Post.find(params[:post_id])
    memory = params[:post_id]
    @blog_comment.blogs_post = @post
    @blog_comment.user = current_user
    respond_to do |format|
      if @blog_comment.save
        @blog_comment.created_at= datetime_format_helper(@blog_comment.created_at)
        format.json{ render json: [@blog_comment,current_user], status: :created }
      else
        format.html
      end
    end
  end
  private
  def create_params
    params.require(:blogs_comment).permit(:comment_content)
  end
end
