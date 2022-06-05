require 'rails_helper'

RSpec.describe Area, type: :model do
    #testing relationships between models
    it { should have_many(:products)}
    it { should have_many(:services)}
    #testing name
    it { should validate_presence_of(:name) }
    it { should allow_value(Faker::Name.first_name).for(:name) }
    it { should_not allow_value(Faker::Number.number).for(:name) }
    #testing description
    it { should validate_presence_of(:description) }
    it { should allow_value(Faker::Lorem.word).for(:description)}
    it { should_not allow_value(Faker::Number.number).for(:description) }
end