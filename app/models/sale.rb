class Sale < ActiveRecord::Base
  attr_accessible :client_id, :date, :product_ids
  belongs_to :client
  
  has_many :sale_orders
  has_many :products, :through => :sale_orders
end
