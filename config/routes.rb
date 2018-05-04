Rails.application.routes.draw do
  resources :shop_settings
  mount ShopifyApp::Engine, at: '/'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'shop_settings#display'
end
