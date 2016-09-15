json.extract! order, :id, :orderid, :orderxRef, :firstname, :lastname, :created, :modified, :orderstatus, :created_at, :updated_at
json.url order_url(order, format: :json)