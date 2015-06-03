class OrderProfilesController < ApplicationController
  before_action :set_order_profile, only: [:show, :edit, :update, :destroy]
  respond_to :json
  # GET /order_profiles
  # GET /order_profiles.json

  def index
    @order_profiles = current_user.order_profiles.all
  end

  # GET /order_profiles/1
  # GET /order_profiles/1.json
  def show
  end

  # GET /order_profiles/new
  def new

    # @business_names = []
    # Business.find_each do |b|
    #   @business_names << [b.name, b.id]
    # end

    # @business_json=[]
    # Business.find_each do |b|
    #   @business_json << b.to_json
    # end

    # @product_names = []
    # Product.find_each do |p|
    #   @product_names << [p.name, [p.id, p.business_id]]
    # end

    # @product_json = []
    # Product.find_each do |j|
    #   @product_json << j.to_json
    # end

    @order_profile = current_user.order_profiles.build

    @businesses = Business.find_each.as_json
    @products = Product.find_each.as_json


    end




  # GET /order_profiles/1/edit
  def edit
    @business_names = []
    Business.find_each do |b|
      @business_names << [b.name, b.id]
    end
    @product_names = []
    Product.find_each do |p|
      @product_names << [p.name, [p.id, p.business_id]]
    end
  end

  # POST /order_profiles
  # POST /order_profiles.json
  def create

    @order_profile = current_user.order_profiles.build(order_profile_params)


    respond_to do |format|
      if @order_profile.save
        format.html { redirect_to @order_profile, notice: 'Order profile was successfully created.' }
        format.json { render :show, status: :created, location: @order_profile }
      else
        format.html { render :new }
        format.json { render json: @order_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_profiles/1
  # PATCH/PUT /order_profiles/1.json
  def update
    respond_to do |format|
      if @order_profile.update(order_profile_params)
        format.html { redirect_to @order_profile, notice: 'Order profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @order_profile }
      else
        format.html { render :edit }
        format.json { render json: @order_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_profiles/1
  # DELETE /order_profiles/1.json
  def destroy
    @order_profile.destroy
    respond_to do |format|
      format.html { redirect_to order_profiles_url, notice: 'Order profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end





  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_profile
      @order_profile = current_user.order_profiles.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_profile_params
      params[:order_profile].permit(:name, :product_id, :address_for_delivery, :phone)

    end
end
