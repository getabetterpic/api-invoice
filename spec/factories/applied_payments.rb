# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :applied_payment do
    payment nil
    invoice nil
    amount "9.99"
    status "MyString"
  end
end
