# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html

get 'inventory', :to => 'inventory#index'

get 'inventory(/:action(/:id))', controller: :inventory
post 'inventory(/:action(/:id))', controller: :inventory
put 'inventory(/:action(/:id))', controller: :inventory

get 'inventory/categories/:id', to: 'inventory#categories'

# get 'inventory(/categories:action(/:id))', controller: :inventory
# post 'inventory(/categories:action(/:id))', controller: :inventory
# put 'inventory(/categories:action(/:id))', controller: :inventory

get 'inventory/parts/:id', to: 'inventory#parts'
# get 'inventory(/parts:action(/:id))', controller: :inventory
# post 'inventory(/parts:action(/:id))', controller: :inventory
# put 'inventory(/parts:action(/:id))', controller: :inventory