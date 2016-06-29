class Blogs::Sort < ActiveRecord::Base

  belongs_to :blogs_post, :class_name => 'Blogs::Post',
             counter_cache: :post_count,
             inverse_of: :blogs_sorts

  belongs_to :user,counter_cache: :blogs_sort_count,
      inverse_of: :blogs_sorts
end
