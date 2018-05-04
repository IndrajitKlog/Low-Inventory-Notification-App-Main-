class Shop < ActiveRecord::Base
  include ShopifyApp::SessionStorage
  has_one :shop_setting
end
