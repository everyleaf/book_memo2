# coding:utf-8
# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :memo do
    value "MyString"
  end

  factory :book do
    sequence(:title) { |n| "title_#{n}" }
    #memo "this is memo"
    purchased_on Time.now

    memo = [
      FactoryGirl.create(:memo, value: 'memo1'),
      FactoryGirl.create(:memo, value: 'memo2')
    ]
  end

end
