class Purchase < ActiveRecord::Base
  attr_accessible :date, :product_ids
  
  has_many :purchase_orders
  has_many :products, :through => :purchase_orders
end
