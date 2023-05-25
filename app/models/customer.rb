class Customer < ApplicationRecord
  belongs_to :staff
  has_many :orders
  validates_presence_of :first_name, :address, :email
  validates_numericality_of :phone
  validates_uniqueness_of :phone, :email
end
