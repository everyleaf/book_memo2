# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :memo do
    book_id 1
    body "MyText"
  end
end
