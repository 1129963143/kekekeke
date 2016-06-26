class CreateBlogsPosts < ActiveRecord::Migration
  def change
    create_table :blogs_posts do |t|
      t.string :title
      t.text :content
      t.integer :sort_id
      t.integer :user_id

      t.timestamps null: false
    end
    add_index :blogs_posts, :title
  end
end
