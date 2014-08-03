# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :customer do
    name "MyString"
    address "MyText"
    city "MyString"
    region "MyString"
    postal_code "MyString"
    country "MyString"
    status "MyString"
    email "MyString"
    phone "MyString"
    company nil
  end
end
