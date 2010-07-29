class RemoveSalePriceToProducts < ActiveRecord::Migration
  def self.up
    remove_column :products, :sale_price
  end
end
