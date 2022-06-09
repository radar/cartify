FactoryBot.define do
  factory :customer do
    shop
    name { Faker::Name.name }
  end
end
