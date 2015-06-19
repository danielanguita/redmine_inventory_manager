class InventoryPart < ActiveRecord::Base
  #t.column :part_number, :string
  #t.column :manufacturer, :string
  #t.column :inventory_category_id, :integer
  #t.column :inventory_warehouse_id, :integer
  #t.column :barcode, :string
  #t.column :document, :string
  #t.column :document_type, :integer
  #t.column :description, :text
  #t.column :value, :float
  #t.column :status, :integer
  
  has_many :inventory_movements
  belongs_to :inventory_category
  belongs_to :inventory_warehouse
  
  validates_presence_of :part_number, :manufacturer, :inventory_category, :value, :status, :inventory_warehouse
  validates_uniqueness_of :part_number


  def name
    "#{self.manufacturer} #{self.part_number} #{self.barcode}"
  end

end
