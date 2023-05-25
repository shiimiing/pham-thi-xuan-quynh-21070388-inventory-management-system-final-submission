class Order < ApplicationRecord
  belongs_to :product
  belongs_to :customer
  validates_presence_of :payment_type, :date
  validates_numericality_of :unit_price, :quantity, :total
end
