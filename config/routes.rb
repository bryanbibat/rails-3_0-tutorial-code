AlingnenaApp::Application.routes.draw do
  resources :debts

  match 'products' => 'products#index', :via => :get, :as => 'products'
  match 'products/:id' => 'products#show', :via => :get, :as => 'product'

end
