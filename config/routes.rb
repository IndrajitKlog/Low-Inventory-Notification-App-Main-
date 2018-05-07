Rails.application.routes.draw do
	get 'shop_settings/report'
	get 'shop_settings/display'
  resources :shop_settings

  mount ShopifyApp::Engine, at: '/'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'shop_settings#display'
end
