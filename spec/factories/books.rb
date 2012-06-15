# coding:utf-8
# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :book do
    sequence(:title) { |n| "test_title_#{n}" }
    author "mr jones"
    purchase_date Time.now
  end
end
