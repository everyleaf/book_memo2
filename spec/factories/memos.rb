# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :memo do
    body "MyString"
    book_id 1
  end
end
