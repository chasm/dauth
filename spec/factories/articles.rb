# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :article do
    name "MyString"
    content "MyText"
    author_name "MyString"
  end
end
