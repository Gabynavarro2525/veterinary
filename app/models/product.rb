class Product < ApplicationRecord
  belongs_to :area

  #validates_associated :area
  validates :name, presence: true
  validates :classification, presence: true
  validates :selling_price, presence: true, numericality: true
  validates :purchase_price, presence: true, numericality: true
end
