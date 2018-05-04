class ShopSettingsController < ShopifyApp::AuthenticatedController
  before_action :set_shop_setting, only: [:show, :edit, :update, :destroy]

  # GET /shop_settings
  # GET /shop_settings.json
  def index
    @shop_settings = ShopSetting.all
  end

  def display
    @current_shop = ShopifyAPI::Shop.current
    @shop = Shop.find_by(:"shopify_domain" == @current_shop)
    if @shop.shop_setting.class == NilClass
      @shop_setting = ShopSetting.new
      @shop_setting.admin_email = ShopifyAPI::Shop.current.email
      @shop_setting.inventory_limit = 5
      @shop_setting.email_notification_frequency = 2
      @shop_setting.email_subscription = true
      @shop_setting.inventory_auto_restock = 5
      @shop_setting.shop_id =@shop.id
      @shop_setting.save
      @demo = ShopifyAPI::AccessScope
      p "hello"
     else
       p "hi"
     end
  end

  # GET /shop_settings/1
  # GET /shop_settings/1.json
  def show
  end

  # GET /shop_settings/new
  def new
    @shop_setting = ShopSetting.new
  end

  # GET /shop_settings/1/edit
  def edit
  end

  # POST /shop_settings
  # POST /shop_settings.json
  def create
    @shop_setting = ShopSetting.new(shop_setting_params)

    respond_to do |format|
      if @shop_setting.save
        format.html { redirect_to @shop_setting, notice: 'Shop setting was successfully created.' }
        format.json { render :show, status: :created, location: @shop_setting }
      else
        format.html { render :new }
        format.json { render json: @shop_setting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shop_settings/1
  # PATCH/PUT /shop_settings/1.json
  def update
    respond_to do |format|
      if @shop_setting.update(shop_setting_params)
        format.html { redirect_to @shop_setting, notice: 'Shop setting was successfully updated.' }
        format.json { render :show, status: :ok, location: @shop_setting }
      else
        format.html { render :edit }
        format.json { render json: @shop_setting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shop_settings/1
  # DELETE /shop_settings/1.json
  def destroy
    @shop_setting.destroy
    respond_to do |format|
      format.html { redirect_to shop_settings_url, notice: 'Shop setting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shop_setting
      @shop_setting = ShopSetting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shop_setting_params
      params.require(:shop_setting).permit(:admin_email, :inventory_limit, :email_notification_frequency, :email_subscription, :inventory_auto_restock, :shop_id)
    end
end
