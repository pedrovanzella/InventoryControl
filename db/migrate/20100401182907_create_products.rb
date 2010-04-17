class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :name
      t.integer :brand_id
      t.float :bought_price
      t.float :sale_price
      t.integer :stock_ammount
      t.timestamps
    end
  end
  
  def self.down
    drop_table :products
  end
end
