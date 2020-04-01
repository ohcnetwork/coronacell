class Panchayat < ApplicationRecord
  has_many :contacts
  has_many :users
end
