# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event do
    name "MyString"
    date "2014-01-05"
    place "MyString"
    detail "MyText"
  end
end
