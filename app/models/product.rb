class Product < ApplicationRecord
    belongs_to :area

    validates_associated :area
    validates :name, presence: true, format: { with: /\A[a-zA-Z]+\z/}      
    validates :price, presence: true, numericality: true
end
