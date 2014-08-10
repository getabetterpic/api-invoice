# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :invoice_line do
    description "MyString"
    units "9.99"
    unit_price "9.99"
    line_amount "9.99"
    status "MyString"
  end
end
