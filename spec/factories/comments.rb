# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :comment do
    article nil
    content "MyText"
    author_name "MyString"
    site_url "MyString"
  end
end
