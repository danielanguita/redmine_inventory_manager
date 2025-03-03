# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html

get 'inventory', to: 'inventory#index'

resources :inventory, only: [:index] do
  collection do
    get 'providors'
    post 'providors'
    put 'providors/:id', to: 'inventory#providors'
    patch 'providors/:id', to: 'inventory#providors'
  end
end

