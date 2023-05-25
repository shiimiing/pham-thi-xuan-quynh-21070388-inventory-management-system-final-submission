class Role < ApplicationRecord
  has_many :staffs
  validates_presence_of :role_name
  validates_uniqueness_of :role_name
end
