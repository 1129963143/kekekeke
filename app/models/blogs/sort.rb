class Blogs::Sort < ActiveRecord::Base

  has_many :blogs_posts, :class_name => 'Blogs::Post',
             inverse_of: :blogs_sort


  belongs_to :user,counter_cache: :blogs_sort_count,
      inverse_of: :blogs_sorts
end
