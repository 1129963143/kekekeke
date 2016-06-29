class CreateBlogsSorts < ActiveRecord::Migration
  def change
    create_table :blogs_sorts do |t|
      t.string :name
      t.integer :user_id
      t.integer :post_id
      t.integer :post_count

      t.timestamps null: false
    end
  end
end
