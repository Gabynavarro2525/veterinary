class Service < ApplicationRecord
    belongs_to :area

    validates_associated :area
    validates :name, presence: true, format: { with: /\A[a-zA-Z]+\z/}   
    validates :classification, presence: true, format: { with: /\A[a-zA-Z]+\z/}   
    validates :purchase_price, presence: true, numericality: true
    validates :selling_price, presence: true, numericality: true
end
