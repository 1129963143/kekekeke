class Blogs::Comment < ActiveRecord::Base
  belongs_to :user, counter_cache: 'blogs_comment_count',
             inverse_of: :blogs_comments

  belongs_to :blogs_post, :class_name => 'Blogs::Post',
      foreign_key: :post_id,
      inverse_of: :blogs_comments,
      counter_cache: 'comment_count'
end
