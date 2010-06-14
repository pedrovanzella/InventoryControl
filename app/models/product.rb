class Product < ActiveRecord::Base
  belongs_to :brand
  
  has_many :sale_orders
  has_many :sales, :through => :sale_orders
  
  has_many :purchase_orders
  has_many :purchases, :through => :purchase_orders

  named_scope :with_brand, { :joins => :brand }
  named_scope :stock_alert, { :conditions => "stock_ammount = stock_minimum" }
end
