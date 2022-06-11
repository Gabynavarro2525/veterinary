FactoryBot.define do
    factory :area do
      name { Faker::Name.first_name }
      description { Faker::Lorem.word }
    end
  end