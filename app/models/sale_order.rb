class SaleOrder < ActiveRecord::Base
  belongs_to :sale
  belongs_to :product
end
