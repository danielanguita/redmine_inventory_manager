class CreateInventoryWarehouses < ActiveRecord::Migration
  def self.up
    create_table :inventory_warehouses do |t|
      t.column :name, :string
      t.column :location, :string
    end
  end

  def self.down
    drop_table :inventory_warehouses
  end
end
