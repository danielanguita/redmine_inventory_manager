require 'redmine'

Redmine::Plugin.register :redmine_inventory_manager do
  name 'Redmine Inventory Manager Plugin'
  author 'Daniel Anguita O.'
  description 'Take your warehouse or office inventory on the same platform of your projects'
  version '0.0.1'
  
  permission :inventory, {:inventory => [:index, :movements, :categories, :parts, :warehouses, :providors]}, :public => false
  
  menu :top_menu, :inventory, { :controller => 'inventory', :action => 'index' }, {:caption => 'Inventory', :before => 'admin'}
end
