AlingnenaApp::Application.routes.draw do
  resources :suppliers

  resources :purchases do
    resource :invoice
  end

  resources :debts
  resources :products do
    collection do
      get 'search'
    end
  end
end
