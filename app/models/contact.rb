class Contact < ApplicationRecord
  enum gender: {male: "male", female: "female"}

  belongs_to :panchayat
  has_many :non_medical_reqs
  has_many :medical_reqs
end
