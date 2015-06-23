class ModificationsForProvidor < ActiveRecord::Migration
    def self.up
      add_column :inventory_parts, :inventory_providor_id, :integer
    end

    def self.down
      remove_column :inventory_parts, :inventory_providor_id
    end
  end

