json.extract! order, :id, :unit_price, :quantity, :discount, :total, :date, :payment_type, :product_id, :customer_id, :created_at, :updated_at
json.url order_url(order, format: :json)
