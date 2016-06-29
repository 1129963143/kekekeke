class Blogs::Post < ActiveRecord::Base
  belongs_to :user, counter_cache: :post_count,
             inverse_of: :blogs_posts
  has_many :blogs_comments, :class_name => 'Blogs::Comment',
      inverse_of: :blogs_post

  belongs_to :blogs_sort, :class_name => 'Blogs::Sort',
      inverse_of: :blogs_posts,
      foreign_key: :sort_id
end
