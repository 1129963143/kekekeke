FactoryGirl.define do
  factory :blogs_post, class: 'Blogs::Post' do
    title "MyString"
    content "MyText"
    sort_id 1
    user_id 1
  end
end
