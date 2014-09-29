# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :payment do
    amount "9.99"
    customer nil
    notes "MyText"
    payment_method "MyString"
    reference "MyString"
  end
end
