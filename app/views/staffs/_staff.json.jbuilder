json.extract! staff, :id, :full_name, :address, :phone, :email, :username, :password, :role_id, :created_at, :updated_at
json.url staff_url(staff, format: :json)
