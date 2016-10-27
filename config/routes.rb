# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html

get 'inventory', :to => 'inventory#index'

get 'inventory(/:action(/:id))', controller: :inventory
post 'inventory(/:action(/:id))', controller: :inventory
put 'inventory(/:action(/:id))', controller: :inventory
