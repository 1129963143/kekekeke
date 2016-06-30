desc '初始化模型数据库。'
namespace :init_model_database do

  desc '初始化Blogs::Sort 模型。'
  task persistent_blogs_sorts: :environment do
    @user = User.first
    @blogs_post = Blogs::Post.first
    @name= '分类'
    5.times  do |index|
    Blogs::Sort.create(name: "#@name#{index}", user: @user)
      end
  end


end
