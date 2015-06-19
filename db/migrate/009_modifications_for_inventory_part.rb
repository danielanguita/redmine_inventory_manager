class ModificationsForInventoryPart < ActiveRecord::Migration
    def self.up
      add_column :inventory_parts, :barcode, :string
      add_column :inventory_parts, :inventory_warehouse_id, :integer
      add_column :inventory_parts, :document, :string
      add_column :inventory_parts, :document_type, :integer

      remove_column :inventory_movements, :document
      remove_column :inventory_movements, :document_type
      remove_column :inventory_movements, :quantity
      remove_column :inventory_movements, :value

      remove_column :inventory_parts, :where
    end

    def self.down
      remove_column :inventory_parts, :barcode
      remove_column :inventory_parts, :inventory_warehouse_id
      remove_column :inventory_parts, :document
      remove_column :inventory_parts, :document_type

      add_column :inventory_movements, :document, :string
      add_column :inventory_movements, :document_type, :integer
      add_column :inventory_movements, :quantity, :float
      add_column :inventory_movements, :value, :float

      add_column :inventory_parts, :where, :string
    end
  end

