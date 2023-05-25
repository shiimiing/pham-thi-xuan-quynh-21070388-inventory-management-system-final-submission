class Customer < ApplicationRecord
  belongs_to :staff
  has_many :orders
  validates_presence_of :full_name, :address, :email, :username, :password
  validates_numericality_of :phone
  validates_uniqueness_of :phone, :email, :username
end
