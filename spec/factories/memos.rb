# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :memo do
    book {Factory.create(:book)} 
    body "create by request spec"
  end
end
