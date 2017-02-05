json.extract! shipping_option, :id, :name, :description, :price, :is_local_pickup, :is_deleted, :created_at, :updated_at
json.url shipping_option_url(shipping_option, format: :json)