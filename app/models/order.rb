class Order < ApplicationRecord
  has_many :orderdetails
  has_many :products, :through => orderdetails
end
