require 'csv'
class Product < ApplicationRecord
  belongs_to :area

  #validates_associated :area
  
  validates :name, presence: true
  validates :classification, presence: true
  validates :selling_price, presence: true, numericality: true
  validates :purchase_price, presence: true, numericality: true
  
  def self.to_csv
    attributes = %w(area_id id name classification selling_price purchase_price)
    CSV.generate do |csv|
      csv << attributes
      all.each do |product|
        csv << attributes.map {|attr|product.send(attr)}
      end
    end
  end
end
