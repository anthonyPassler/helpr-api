FactoryBot.define do
  factory :post do
    association :user
    title { Faker::Superhero.name }
    description { Faker::Lorem.sentence(word_count: 10) }
    date { Faker::Date.forward(days: 10) }
    address { Faker::Address.full_address }
  end
end
