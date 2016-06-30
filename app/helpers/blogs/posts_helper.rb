module Blogs::PostsHelper

  #根据给出的@post 获取前一条数据
  def get_previous_one(current_post)
    raise if current_post.blank?
    return current_post if Blogs::Post.first.id >= current_post.id

    Blogs::Post.where('id < ?',current_post.id).last
  end
  #根据给出的@post获取后一条数据
  def get_after_one(current_post)
    return false if current_post.blank?
    return current_post if Blogs::Post.last.id <= current_post.id
    Blogs::Post.where('id > ?',current_post.id).limit(1)[0]
  end

end
