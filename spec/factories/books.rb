# coding:utf-8
# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :book do
    sequence(:title) { |n| "title_#{n}" }
    memo "this is memo"
    purchased_on Time.now
  end
end
