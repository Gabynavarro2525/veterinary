class Service < ApplicationRecord
    belongs_to :area

    #validations
    validates_associated :area
    validates :name, presence: true
    validates :classification, presence: true
    validates :purchase_price, presence: true
    validates :purchase_price, numericality: true
    validates :selling_price, presence: true
    validates :selling_price, numericality: true
end
