class SaleOrder < ActiveRecord::Base
  attr_accessible :sale_id, :product_id
  
  belongs_to :sale
  belongs_to :product
end
