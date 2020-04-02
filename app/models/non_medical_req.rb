class NonMedicalReq < ApplicationRecord
  enum requirement_type: {rice_wheat_atta: "rice_wheat_atta", vegetables_fruits: "vegetables_fruits",spices_oil: "spices_oil", cooking_gas: "cooking_gas", drinking_water: "drinking_water", household_water: "household_water", sanitary_napkins: "sanitary_napkins", baby_foods: "baby_foods"}
  belongs_to :contact
end
