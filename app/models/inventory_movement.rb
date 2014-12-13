class InventoryMovement < ActiveRecord::Base
  #t.column :inventory_part_id, :integer
  #t.column :quantity, :float
  #t.column :document, :string
  #t.column :document_type, :integer
  #t.column :value, :float
  #t.column :inventory_providor_id, :integer
  #t.column :project_id, :integer
  #t.column :another_destiny :string
  #t.column :date, :datetime
  #t.column :user_id, :integer
  
  belongs_to :inventory_part
  belongs_to :inventory_providor
  belongs_to :user
  belongs_to :project
  
  validates_presence_of :inventory_part, :quantity, :date, :user_id
  
  def doctype
		doc_types = { 
									1 => l('invoice'), 
									2 => l('ticket'), 
									3 => l('proforma-invoice'), 
									4 => l("waybill"), 
									5 => l("inventory")
								}
		if self.document_type
			return doc_types[document_type]
		end
		return nil  
  end


end
