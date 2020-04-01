class Contact < ApplicationRecord
  enum gender: {male: "male", female: "female"}

  has_many :non_medical_reqs
  has_many :medical_reqs
end
