json.extract! shop_setting, :id, :admin_email, :inventory_limit, :email_notification_frequency, :email_subscription, :inventory_auto_restock, :shop_id, :created_at, :updated_at
json.url shop_setting_url(shop_setting, format: :json)
