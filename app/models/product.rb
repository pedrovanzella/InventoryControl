class Product < ActiveRecord::Base
  attr_accessible :name, :brand_id, :bought_price, :sale_price, :stock_ammount
  belongs_to :brand
  
  has_many :sale_orders
  has_many :sales, :through => :sale_orders
  
  has_many :purchase_orders
  has_many :purchases, :through => :purchase_orders
end
