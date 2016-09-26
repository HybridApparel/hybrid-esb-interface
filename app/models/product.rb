class Product < ApplicationRecord
  has_many :orderdetails
  has_many :orders, :through => orderdetails
end
