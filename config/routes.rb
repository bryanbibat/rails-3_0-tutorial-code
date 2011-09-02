AlingnenaApp::Application.routes.draw do
  resources :debts

  match 'products' => 'products#index', :via => :get, :as => 'products'
  match 'products' => 'products#create', :via => :post
  match 'products/new' => 'products#new', :via => :get, :as => 'new_product'
  match 'products/search' => 'products#search', :via => :get, :as => 'search_products'
  match 'products/:id' => 'products#show', :via => :get, :as => 'product'
  match 'products/:id' => 'products#destroy', :via => :delete
  match 'products/:id' => 'products#update', :via => :put
  match 'products/:id/edit' => 'products#edit', :via => :get, :as => 'edit_product'

end
