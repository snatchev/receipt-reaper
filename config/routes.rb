ReceiptReaper::Application.routes.draw do
  root :to => "receipts#index"
  resources :receipts
  resources :categories
end