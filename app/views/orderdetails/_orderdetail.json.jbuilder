json.extract! orderdetail, :id, :stylename, :quantity, :garmentsize, :created_at, :updated_at
json.url orderdetail_url(orderdetail, format: :json)