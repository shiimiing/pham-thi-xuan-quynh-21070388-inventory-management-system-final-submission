json.extract! customer, :id, :first_name, :last_name, :address, :phone, :email, :staff_id, :created_at, :updated_at
json.url customer_url(customer, format: :json)
