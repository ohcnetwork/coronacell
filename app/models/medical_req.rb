class MedicalReq < ApplicationRecord
  enum requirement_type: {diabetes: "diabetes", blood_pressure: "blood_pressure", cholestrol: "cholestrol", palliative: "palliative", asthma: "asthma", copd: "copd", cancer: "cancer", dialysis: "dialysis", ayurveda: "ayurveda", homeo: "homeo"}
  belongs_to :contact
end
