class Service < ApplicationRecord
    belongs_to :area

    #validations
    validates_associated :area
    validates :name, presence: true
    validates :name, format: { with: /\A[a-zA-Z]+\z/}   
    validates :classification, presence: true
    validates :classification, format: { with: /\A[a-zA-Z]+\z/}   
    validates :purchase_price, presence: true
    validates :purchase_price, numericality: true
    validates :selling_price, presence: true
    validates :selling_price, numericality: true
end
