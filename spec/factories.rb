FactoryBot.define do
  factory :cinema do
    name { Faker::Name.unique.name }
    location { Faker::Address.unique.full_address }
  end
end