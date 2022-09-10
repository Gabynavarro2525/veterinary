FactoryBot.define do
    factory :product do
      area
      name { Faker::Lorem.word }
      classification { Faker::Lorem.word }
      purchase_price { Faker::Number.decimal_part(digits: 1) }
      selling_price { Faker::Number.decimal_part(digits: 1) }
    end
  end