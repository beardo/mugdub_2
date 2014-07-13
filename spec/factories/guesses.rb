# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :guess do
    latitude 1.5
    longitude 1.5
    name "MyString"
    face nil
    user nil
  end
end
