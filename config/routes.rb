# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html

get 'inventory', :to => 'inventory#index'
get ':controller(/:action(/:id))'
# post 'post/:id/vote', :to => 'polls#vote'
