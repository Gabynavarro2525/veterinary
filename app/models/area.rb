class Area < ApplicationRecord
    has_many :products
    has_one :services

    validates :name, presence: true
    validates :name, format: { with: /\A[a-zA-Z]+\z/}  
    validates :description, format: { with: /\A[a-zA-Z]+\z/}    
end
