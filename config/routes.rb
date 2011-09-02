AlingnenaApp::Application.routes.draw do
  resources :debts

  resources :products do
    collection do
      get 'search'
    end
  end

end
