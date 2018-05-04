require "application_system_test_case"

class ShopSettingsTest < ApplicationSystemTestCase
  setup do
    @shop_setting = shop_settings(:one)
  end

  test "visiting the index" do
    visit shop_settings_url
    assert_selector "h1", text: "Shop Settings"
  end

  test "creating a Shop setting" do
    visit shop_settings_url
    click_on "New Shop Setting"

    fill_in "Admin Email", with: @shop_setting.admin_email
    fill_in "Email Notification Frequency", with: @shop_setting.email_notification_frequency
    fill_in "Email Subscription", with: @shop_setting.email_subscription
    fill_in "Inventory Auto Restock", with: @shop_setting.inventory_auto_restock
    fill_in "Inventory Limit", with: @shop_setting.inventory_limit
    fill_in "Shop", with: @shop_setting.shop_id
    click_on "Create Shop setting"

    assert_text "Shop setting was successfully created"
    click_on "Back"
  end

  test "updating a Shop setting" do
    visit shop_settings_url
    click_on "Edit", match: :first

    fill_in "Admin Email", with: @shop_setting.admin_email
    fill_in "Email Notification Frequency", with: @shop_setting.email_notification_frequency
    fill_in "Email Subscription", with: @shop_setting.email_subscription
    fill_in "Inventory Auto Restock", with: @shop_setting.inventory_auto_restock
    fill_in "Inventory Limit", with: @shop_setting.inventory_limit
    fill_in "Shop", with: @shop_setting.shop_id
    click_on "Update Shop setting"

    assert_text "Shop setting was successfully updated"
    click_on "Back"
  end

  test "destroying a Shop setting" do
    visit shop_settings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shop setting was successfully destroyed"
  end
end
