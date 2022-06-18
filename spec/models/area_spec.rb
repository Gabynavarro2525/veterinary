require 'rails_helper'

RSpec.describe Area, type: :model do
  it 'testing relationships between models'do
    should have_many(:products)
    should have_many(:services)
  end
  
  it 'testing name' do
    should validate_presence_of(:name)
    should allow_value(Faker::Name.first_name).for(:name)
    should_not allow_value(Faker::Number.number).for(:name)
  end
   
  it 'testing description' do
   should validate_presence_of(:description)
   should allow_value(Faker::Lorem.word).for(:description)
   should_not allow_value(Faker::Number.number).for(:description)
  end
  
end
