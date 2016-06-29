FactoryGirl.define do
  factory :blogs_sort, class: 'Blogs::Sort' do
    name "MyString"
    user_id 1
    post_id 1
    post_count 1
  end
end
