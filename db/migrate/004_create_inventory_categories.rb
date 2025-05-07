class CreateInventoryCategories < ActiveRecord::Migration[5.1]
  def self.up
    create_table :inventory_categories do |t|
      t.column :name, :string
      t.column :description, :text
    end
  end

  def self.down
    drop_table :inventory_categories
  end
end
