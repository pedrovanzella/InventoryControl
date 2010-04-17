class PurchaseOrder < ActiveRecord::Base
  attr_accessible :product_id, :purchase_id
  
  belongs_to :purchase
  belongs_to :product
end
