AlingnenaApp::Application.routes.draw do
  resources :invoices

  resources :purchases

  resources :debts

  resources :products do
    collection do
      get 'search'
    end
  end

end
