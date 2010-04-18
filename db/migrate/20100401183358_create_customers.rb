class CreateCustomers < ActiveRecord::Migration
  def self.up
    create_table :customers do |t|
      t.string :name
      t.integer :telephone
      t.text :address
      t.string :email
      t.integer :rg
      t.timestamps
    end
  end
  
  def self.down
    drop_table :customers
  end
end
