class Contact < ApplicationRecord
  enum gender: {male: "male", female: "female"}
  enum ration_type: {yellow: 'yellow', pink: 'pink', blue: 'blue', white: 'white'}
  enum tracking_type: {flight_passenger: 'flight_passenger', domestic_passenger: 'domestic_passenger'}

  belongs_to :panchayat
  has_many :non_medical_reqs
  has_many :medical_reqs

  has_many :calls
  has_many :callees, through: :calls, source: :user
end
