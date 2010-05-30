class Sale < ActiveRecord::Base
  belongs_to :customer
  
  has_many :sale_orders
  has_many :products, :through => :sale_orders
end
