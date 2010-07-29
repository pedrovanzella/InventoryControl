class CreateSales < ActiveRecord::Migration
  def self.up
    create_table :sales do |t|
      t.integer :customer_id
      t.date :date
      t.timestamps
    end

    add_index :sales, :customer_id
  end
  
  def self.down
    drop_table :sales
  end
end
