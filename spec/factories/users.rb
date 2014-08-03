# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    name "Something Cool"
    email "something@somewhere.com"
    company :company
  end
end
