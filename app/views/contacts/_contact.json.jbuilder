json.extract! contact, :id, :name, :phone, :gender, :age, :house_name, :ward, :landmark, :created_at, :updated_at
json.url contact_url(contact, format: :json)
