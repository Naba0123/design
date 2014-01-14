# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :after_graduation do
    belong "MyString"
    position "MyString"
    job_kind 1
    other "MyText"
  end
end
