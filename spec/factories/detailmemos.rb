# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :detailmemo do
    book_id 1
    sequence(:memo) { |n| "MyText_#{n}" }
  end
end
