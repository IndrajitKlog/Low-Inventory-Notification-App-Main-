ShopifyApp.configure do |config|
  config.application_name = "My Shopify App"
  config.api_key = "a3fb810afed4020c2b0922e0bd36343a"
  config.secret = "48aa0397bd5a85cc627b6c2703b48bd6"
  config.scope = "read_orders, read_products"
  config.embedded_app = true
  config.after_authenticate_job = false
  config.session_repository = Shop
end
