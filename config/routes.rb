AlingnenaApp::Application.routes.draw do
  get "products/show"

  resources :debts
end
