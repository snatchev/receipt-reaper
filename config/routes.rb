ReceiptReaper::Application.routes.draw do
  resources :accounts

  root :to => "receipts#index"
  resources :receipts
  resources :categories
end
