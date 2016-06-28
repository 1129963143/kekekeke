class AddBlogsCommentCountToUser < ActiveRecord::Migration
  def change
    add_column :users, :blogs_comment_count, :integer
  end
end
