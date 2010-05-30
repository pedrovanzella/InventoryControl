class Product < ActiveRecord::Base
  belongs_to :brand
  
  has_many :sale_orders
  has_many :sales, :through => :sale_orders
  
  has_many :purchase_orders
  has_many :purchases, :through => :purchase_orders
end
