class AddCommentCountToBlogsPost < ActiveRecord::Migration
  def change
    add_column :blogs_posts, :comment_count, :integer
  end
end
