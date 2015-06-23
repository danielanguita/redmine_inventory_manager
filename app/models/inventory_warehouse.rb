class InventoryWarehouse < ActiveRecord::Base
  has_many :inventory_parts
end
