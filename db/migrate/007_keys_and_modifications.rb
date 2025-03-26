class KeysAndModifications < ActiveRecord::Migration[5.2]
    def self.up
      execute <<-SQL
        ALTER TABLE `inventory_parts` ADD
          UNIQUE INDEX `uk_inventory_part_part_number`(`part_number`);
      SQL

      execute <<-SQL
          ALTER TABLE `inventory_categories` ADD
            UNIQUE INDEX `uk_inventory_category_name`(`name`);
        SQL
        
      execute <<-SQL
          ALTER TABLE `inventory_providors` ADD
            UNIQUE INDEX `uk_inventory_providor_identification`(`identification`);
        SQL
          
      add_column :inventory_movements, :user_from_id, :int
      add_column :inventory_movements, :user_to_id, :int
      add_column :inventory_movements, :warehouse_to_id, :bigint
      add_column :inventory_movements, :warehouse_from_id, :bigint
      add_column :inventory_movements, :serial_number, :string
        
      execute <<-SQL
        ALTER TABLE `inventory_movements` ADD
          CONSTRAINT `fk_inventory_movement_warehouse_to` FOREIGN KEY (`warehouse_to_id`)
            REFERENCES `inventory_warehouses`(`id`)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION;
      SQL
      
      execute <<-SQL
        ALTER TABLE `inventory_movements` ADD
          CONSTRAINT `fk_inventory_movement_warehouse_from` FOREIGN KEY (`warehouse_from_id`)
            REFERENCES `inventory_warehouses`(`id`)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION;
      SQL
      
      execute <<-SQL
        ALTER TABLE `inventory_movements` ADD
          CONSTRAINT `fk_inventory_movement_user` FOREIGN KEY (`user_id`)
            REFERENCES `users`(`id`)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION;
      SQL
      
      execute <<-SQL
        ALTER TABLE `inventory_movements` ADD
          CONSTRAINT `fk_inventory_movement_user_from` FOREIGN KEY (`user_from_id`)
            REFERENCES `users`(`id`)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION;
      SQL
      
      execute <<-SQL
        ALTER TABLE `inventory_movements` ADD
          CONSTRAINT `fk_inventory_movement_user_to` FOREIGN KEY (`user_to_id`)
            REFERENCES `users`(`id`)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION;
      SQL
      
      add_column :inventory_parts, :where, :string
      
    end

    def self.down
      execute "ALTER TABLE `inventory_parts` DROP INDEX `uk_inventory_part_part_number`"
      execute "ALTER TABLE `inventory_categories` DROP INDEX `uk_inventory_category_name`"
      execute "ALTER TABLE `inventory_providors` DROP INDEX `uk_inventory_providor_identification`"

      execute "ALTER TABLE `inventory_movements` DROP FOREIGN KEY `fk_inventory_movement_user`"
      execute "ALTER TABLE `inventory_movements` DROP FOREIGN KEY `fk_inventory_movement_user_from`"
      execute "ALTER TABLE `inventory_movements` DROP FOREIGN KEY `fk_inventory_movement_user_to`"
      execute "ALTER TABLE `inventory_movements` DROP FOREIGN KEY `fk_inventory_movement_warehouse_from`"
      execute "ALTER TABLE `inventory_movements` DROP FOREIGN KEY `fk_inventory_movement_warehouse_to`"
      
      remove_column :inventory_movements, :user_from_id
      remove_column :inventory_movements, :user_to_id
      remove_column :inventory_movements, :warehouse_to_id
      remove_column :inventory_movements, :warehouse_from_id
      remove_column :inventory_movements, :serial_number
      remove_column :inventory_parts, :where
    end
  end
