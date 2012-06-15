# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :memo do
    memo "MyText"
    book_id "MyString"
  end
end
