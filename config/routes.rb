# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html

get 'inventory', :to => 'inventory#index'
get ':controller(/:action(/:id))'
post ':controller(/:action(/:id))'
put ':controller(/:action(/:id))'
