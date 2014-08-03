# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :invoice do
    invoice_date "2014-08-03"
    description "MyString"
    customer nil
    status "MyString"
    revision 1
  end
end
