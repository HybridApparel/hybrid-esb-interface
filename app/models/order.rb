class Order < ApplicationRecord
  has_many  :orderdetails, :inverse_of => :order
  has_many  :products, :through => :orderdetails

  accepts_nested_attributes_for :orderdetails
end
