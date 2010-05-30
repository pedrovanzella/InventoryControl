class AddStockMinimumToProducts < ActiveRecord::Migration
  def self.up
    add_column :products, :stock_minimum, :integer
  end

  def self.down
    remove_column :products, :stock_minimum
  end
end
