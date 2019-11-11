json.extract! phone, :id, :user_id, :phone_number, :created_at, :updated_at
json.url phone_url(phone, format: :json)
