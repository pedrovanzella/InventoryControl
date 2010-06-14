class CreatePurchaseOrders < ActiveRecord::Migration
  def self.up
    create_table :purchase_orders do |t|
      t.integer :product_id
      t.integer :purchase_id
      t.timestamps
    end

    add_index :purchase_orders, :product_id
    add_index :purchase_orders, :purchase_id
  end
  
  def self.down
    drop_table :purchase_orders
  end
end
