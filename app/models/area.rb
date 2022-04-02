class Area < ApplicationRecord
    has_many :products
    has_one :services
end
