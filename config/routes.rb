AlingnenaApp::Application.routes.draw do
  resources :messages do
    collection do
      get 'message_table'
    end
  end

  resources :suppliers

  resources :purchases do
    resource :invoice
    resources :line_items
  end

  resources :debts
  resources :products do
    collection do
      get 'search'
    end
  end
end
