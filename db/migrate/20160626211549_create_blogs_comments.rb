class CreateBlogsComments < ActiveRecord::Migration
  def change
    create_table :blogs_comments do |t|
      t.integer :comment_id
      t.text :comment_content
      t.integer :user_id

      t.timestamps null: false
    end
    add_index :blogs_comments, :comment_id
  end
end
