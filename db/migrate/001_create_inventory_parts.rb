class CreateInventoryParts < ActiveRecord::Migration
  def self.up
    create_table :inventory_parts do |t|
      t.column :part_number, :string
      t.column :manufacturer, :string
      t.column :inventory_category_id, :integer
      t.column :description, :text
      t.column :value, :float
      t.column :status, :integer
    end
  end

  def self.down
    drop_table :inventory_parts
  end
end
