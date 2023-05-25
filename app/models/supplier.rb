class Supplier < ApplicationRecord
  has_many :products
  validates_presence_of :name, :address, :email
  validates_numericality_of :phone
  validates_uniqueness_of :phone, :email
end
