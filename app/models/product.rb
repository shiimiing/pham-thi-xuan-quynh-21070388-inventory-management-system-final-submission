class Product < ApplicationRecord
  belongs_to :category
  belongs_to :supplier
  has_many :orders
  validates_presence_of :name
  validates_numericality_of :price, :quantity
end
