class Product < ApplicationRecord
    belongs_to :area

    #validations
    validates_associated :area
    validates :name, presence: true
    validates :name, format: { with: /\A[a-zA-Z]+\z/}      
    validates :price, presence: true
    validates :price, numericality: true
end
