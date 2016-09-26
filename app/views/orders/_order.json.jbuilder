json.extract! order, :id, :orderident, :orderstatus, :created_at, :updated_at
json.url order_url(order, format: :json)