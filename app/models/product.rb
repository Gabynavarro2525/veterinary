class Product < ApplicationRecord
  belongs_to :area

  validates_associated :area
  validates :name, presence: true, format: { with: /\A[a-zA-Z]+\z/ }
  validates :classification, presence: true, format: { with: /\A[a-zA-Z]+\z/ }
  validates :selling_price, presence: true, numericality: true
  validates :purchase_price, presence: true, numericality: true
end
