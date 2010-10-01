class ForeignKeysAndViews < ActiveRecord::Migration
    def self.up
        execute <<-SQL
          ALTER TABLE `inventory_movements` ADD
            CONSTRAINT `fk_inventory_movement_part` FOREIGN KEY (`inventory_part_id`)
              REFERENCES `inventory_parts`(`id`)
              ON DELETE NO ACTION
              ON UPDATE NO ACTION;
        SQL

      execute <<-SQL
          ALTER TABLE `inventory_movements` ADD
            CONSTRAINT `fk_inventory_movement_providor` FOREIGN KEY (`inventory_providor_id`)
              REFERENCES `inventory_providors`(`id`)
              ON DELETE NO ACTION
              ON UPDATE NO ACTION;
        SQL
      
      execute <<-SQL
        ALTER TABLE `inventory_parts` ADD
          CONSTRAINT `fk_inventory_parts_category` FOREIGN KEY (`inventory_category_id`)
            REFERENCES `inventory_categories`(`id`)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION;
      SQL
    end

    def self.down
      execute "ALTER TABLE `inventory_movements` DROP FOREIGN KEY `fk_inventory_movement_part`"
      execute "ALTER TABLE `inventory_movements` DROP FOREIGN KEY `fk_inventory_movement_providor`"
      execute "ALTER TABLE `inventory_parts` DROP FOREIGN KEY `fk_inventory_parts_category`"
    end
  end
