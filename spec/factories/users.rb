FactoryBot.define do
  factory :user do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    email { Faker::Email.email }
    address { Faker::Address.full_address }
    postcode { Faker::Address.postcode }
    bio { Faker::Lorem.sentence(word_count: 10) }
  end
end
