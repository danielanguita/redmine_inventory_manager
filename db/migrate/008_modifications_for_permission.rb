class ModificationsForPermission < ActiveRecord::Migration[5.2]
    def self.up
      add_column :inventory_warehouses, :user_manager_id, :integer
    end

    def self.down
      remove_column :inventory_warehouses, :user_manager_id
    end
  end
