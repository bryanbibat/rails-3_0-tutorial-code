AlingnenaApp::Application.routes.draw do
  resources :debts

  match 'products' => 'products#index', :via => :get, :as => 'products'
  match 'products/search' => 'products#search', :via => :get, :as => 'search_products'
  match 'products/:id' => 'products#show', :via => :get, :as => 'product'
  match 'products/:id' => 'products#destroy', :via => :delete

end
