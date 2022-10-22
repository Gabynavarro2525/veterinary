require "rails_helper"

RSpec.describe Product, type: :model do
  it 'testing relationships between models'do
    should belong_to(:area) 
    should validate_presence_of(:name) 

  it 'validate name' do
    area = create(:area)
    subject.area = area
    should allow_value(Faker::Name.first_name).for(:name)
    should_not allow_value(Faker::Number.number).for(:name)
  end
 
  it 'testing classification' do 
    should validate_presence_of(:classification)
    should allow_value(Faker::Lorem.word).for(:classification)
    should_not allow_value(Faker::Number.number).for(:classification)
    
  end
  it 'testing selling_price' do
    should validate_presence_of(:selling_price)
    should validate_numericality_of(:selling_price)
    should allow_value(Faker::Number.decimal).for(:selling_price)
    should_not allow_value(Faker::String.random).for(:selling_price)
   
  end
  it 'testing purchase_price' do
    should validate_presence_of(:purchase_price)
    should validate_numericality_of(:purchase_price)
    should allow_value(Faker::Number.decimal).for(:purchase_price)
    should_not allow_value(Faker::String.random).for(:purchase_price)
  end
end 
