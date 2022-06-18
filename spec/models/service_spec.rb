require 'rails_helper'

RSpec.describe Service, type: :model do
  it 'testing relationships between models'do
   should belong_to(:area)
   should validate_presence_of(:name)
  end
  
  it 'validate name' do
    area = create(:area)
    subject.area = area
    should allow_value(Faker::Name.first_name).for(:name)
  end
  it 'testing price' do
    should validate_presence_of(:price)
    should validate_numericality_of(:price)
    should allow_value(Faker::Number.decimal).for(:price)
    should_not allow_value(Faker::String.random).for(:price)
  end

end
