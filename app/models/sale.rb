class Sale < ActiveRecord::Base
  attr_accessible :customer_id, :date, :product_ids
  belongs_to :customer
  
  has_many :sale_orders
  has_many :products, :through => :sale_orders
end
