class AddPostIdToBlogsComment < ActiveRecord::Migration
  def change
    add_column :blogs_comments, :post_id, :integer
    add_index :blogs_comments, :post_id
  end
end
