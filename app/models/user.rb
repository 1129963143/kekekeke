class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :blogs_posts, :class_name => 'Blogs::Post',
      inverse_of: :user

  has_many :blogs_comments, :class_name => 'Blogs::Comment',
      inverse_of: :user

  has_many :blogs_sorts, :class_name => 'Blogs::Sort',
      inverse_of: :user

end
