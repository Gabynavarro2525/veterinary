class Area < ApplicationRecord
    has_many :products
    has_one :services

    validates :name, presence: true, format: { with: /\A[a-zA-Z]+\z/}  
    validates :description, presence: true, format: { with: /\A[a-zA-Z]+\z/}    
end
