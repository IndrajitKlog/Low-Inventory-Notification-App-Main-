class CreateShopSettings < ActiveRecord::Migration[5.2]
  def change
    create_table :shop_settings do |t|
      t.string :admin_email
      t.integer :inventory_limit
      t.integer :email_notification_frequency
      t.boolean :email_subscription, defult: true
      t.integer :inventory_auto_restock
      t.integer :shop_id

      t.timestamps
    end
  end
end
