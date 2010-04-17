class CreateSales < ActiveRecord::Migration
  def self.up
    create_table :sales do |t|
      t.integer :client_id
      t.date :date
      t.timestamps
    end
  end
  
  def self.down
    drop_table :sales
  end
end
