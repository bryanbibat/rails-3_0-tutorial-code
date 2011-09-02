AlingnenaApp::Application.routes.draw do
  resources :debts

  match 'products' => 'products#index', :via => :get
  match 'products/:id' => 'products#show', :via => :get

end
