require 'rails_helper'

RSpec.describe Product, type: :model do
    #testing relationships between models
    it { should belong_to(:area) }
    it { should validate_presence_of(:name) }
    it 'validate name' do 
        area = create(:area)
        subject.area = area
        should allow_value(Faker::Name.first_name).for(:name) 
    end
    it { should_not allow_value(Faker::Number.number).for(:name) }
    #testing classification 
    it { should validate_presence_of(:classification) }
    it { should allow_value(Faker::Lorem.word).for(:classification)}
    it { should_not allow_value(Faker::Number.number).for(:classification) }
    #testing selling_price
    it { should validate_presence_of(:selling_price) }
    it { should validate_numericality_of(:selling_price) }
    it { should allow_value(Faker::Number.decimal).for(:selling_price) }
    it { should_not allow_value(Faker::String.random).for(:selling_price)}
    #testing purchase_price
    it { should validate_presence_of(:purchase_price) }
    it { should validate_numericality_of(:purchase_price) }
    it { should allow_value(Faker::Number.decimal).for(:purchase_price) }
    it { should_not allow_value(Faker::String.random).for(:purchase_price)}
end