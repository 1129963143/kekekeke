class AddBlogsPostCountToUser < ActiveRecord::Migration
  def change
    add_column :users, :post_count, :integer
    add_index :users, :post_count
  end
end
