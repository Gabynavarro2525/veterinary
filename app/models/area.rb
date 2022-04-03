class Area < ApplicationRecord
    has_many :products
    has_one :services

    #validations
    validates :name, presence: true
end
