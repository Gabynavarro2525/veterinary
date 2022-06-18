class Area < ApplicationRecord
  has_many :products
  has_many :services

  validates :name, presence: true, format: { with: /\A[a-zA-Z]+\z/ }
  validates :description, presence: true, format: { with: /\A[a-zA-Z]+\z/ }
end
