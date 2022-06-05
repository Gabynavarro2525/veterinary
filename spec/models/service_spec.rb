require 'rails_helper'

RSpec.describe Service, type: :model do
     #testing relationships between models
     it { should belong_to(:area) }
     it { should validate_presence_of(:name) }
     it 'validate name' do 
         area = Area.create(name: 'aasdsf', description: 'aasdsf')
         subject.area = area
         should allow_value(Faker::Name.first_name).for(:name) 
     end
     #testing price
     it { should validate_presence_of(:price)}
     it { should validate_numericality_of(:price)}
     it { should allow_value(Faker::Number.decimal).for(:price) }
     it { should_not allow_value(Faker::String.random).for(:price)}
end