class AddBlogsSortCountToUser < ActiveRecord::Migration
  def change
    add_column :users, :blogs_sort_count, :integer
  end
end
