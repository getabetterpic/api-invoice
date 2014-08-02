# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :company do
    name "MyString"
    address "MyText"
    city "MyString"
    region "MyString"
    postal_code "MyString"
    country "MyString"
    phone "MyString"
    email "MyString"
    website "MyString"
    internal_reference "MyString"
    external_reference "MyString"
  end
end
