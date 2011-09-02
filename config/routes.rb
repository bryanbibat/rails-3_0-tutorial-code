AlingnenaApp::Application.routes.draw do
  resources :debts

  match('products/:id' => 'products#show', :via => :get)

end
