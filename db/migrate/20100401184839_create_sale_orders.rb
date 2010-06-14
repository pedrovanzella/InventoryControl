class CreateSaleOrders < ActiveRecord::Migration
  def self.up
    create_table :sale_orders do |t|
      t.integer :sale_id
      t.integer :product_id
      t.timestamps
    end

    add_index :sale_orders, :sale_id
    add_index :sale_orders, :product_id
  end
  
  def self.down
    drop_table :sale_orders
  end
end
