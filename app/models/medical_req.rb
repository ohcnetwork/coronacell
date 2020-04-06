class MedicalReq < ApplicationRecord
  enum requirement_type: {diabetes: "diabetes", blood_pressure: "blood_pressure", cholestrol: "cholestrol", palliative: "palliative", asthma: "asthma", copd: "copd", cancer: "cancer", dialysis: "dialysis", ayurveda: "ayurveda", homeo: "homeo", others: "others"}
  enum not_able_type: {undeliverable: "undeliverable", no_fund: "no_fund", no_stock: "no_stock"}
  belongs_to :contact
end
