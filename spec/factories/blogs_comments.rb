FactoryGirl.define do
  factory :blogs_comment, class: 'Blogs::Comment' do
    comment_id 1
    comment_content "MyText"
    user_id 1
  end
end
