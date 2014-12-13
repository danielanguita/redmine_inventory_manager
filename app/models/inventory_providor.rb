class InventoryProvidor < ActiveRecord::Base
  #t.column :identification, :string
  #t.column :name, :string
  #t.column :address0, :string
  #t.column :address1, :string
  #t.column :city, :string
  #t.column :state, :string
  #t.column :country, :string
  #t.column :phone0, :string
  #t.column :phone1, :string
  #t.column :fax, :string
  #t.column :business, :string
  #t.column :email, :string
  #t.column :contact0, :string
  #t.column :contact1, :string
  
  validates_presence_of :identification, :name

  
end
