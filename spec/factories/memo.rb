# coding:utf-8
# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :memo do
    sequence(:content) { |n| "this is comment number #{n}" }
    name "me"
    comment_date Time.now
  end
end
