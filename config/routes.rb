# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
    resources :inventory, controller: 'inventory', only: [] do
      collection do
        get 'reports'
        get 'report_export'
        get 'index'
        get 'inventory_stock_xls'
        get 'ajax_get_part_value'
        get 'ajax_get_part_info'
        get 'movements'
        get 'categories'
        get 'parts'
        get 'providors'
        get 'warehouses'
      end
  
      member do
        get 'edit_in', to: 'inventory#movements'
        get 'edit_out', to: 'inventory#movements'
      end
    end
  
    root 'inventory#index' # Ajusta esto a la acción de controlador que desees como raíz del sitio
  end  