class CreateInventoryMovements < ActiveRecord::Migration[5.2]
  def self.up
    create_table :inventory_movements do |t|
      t.column :inventory_part_id, :bigint
      t.column :quantity, :float
      t.column :document, :string
      t.column :document_type, :integer
      t.column :value, :float
      t.column :inventory_providor_id, :bigint
      t.column :project_id, :string
      t.column :other_destiny, :string
      t.column :date, :datetime
      t.column :user_id, :int
    end
  end

  def self.down
    drop_table :inventory_movements
  end
end
