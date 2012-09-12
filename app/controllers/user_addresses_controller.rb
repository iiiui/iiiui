class UserAddressesController < ApplicationController

  layout 'dashboard'
  # GET /user_addresses
  # GET /user_addresses.json
  def index
    @user_addresses = UserAddress.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_addresses }
    end
  end

  # GET /user_addresses/1
  # GET /user_addresses/1.json
  def show
    @user_address = UserAddress.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_address }
    end
  end

  # GET /user_addresses/new
  # GET /user_addresses/new.json
  def new
    @user_address = UserAddress.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_address }
    end
  end

  # GET /user_addresses/1/edit
  def edit
    @user_address = UserAddress.find(params[:id])
  end

  # POST /user_addresses
  # POST /user_addresses.json
  def create
    @user_address = UserAddress.new(params[:user_address])

    respond_to do |format|
      if @user_address.save
        format.html { redirect_to @user_address, notice: 'User address was successfully created.' }
        format.json { render json: @user_address, status: :created, location: @user_address }
      else
        format.html { render action: "new" }
        format.json { render json: @user_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_addresses/1
  # PUT /user_addresses/1.json
  def update
    @user_address = UserAddress.find(params[:id])

    respond_to do |format|
      if @user_address.update_attributes(params[:user_address])
        format.html { redirect_to @user_address, notice: 'User address was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_addresses/1
  # DELETE /user_addresses/1.json
  def destroy
    @user_address = UserAddress.find(params[:id])
    @user_address.destroy

    respond_to do |format|
      format.html { redirect_to user_addresses_url }
      format.json { head :no_content }
    end
  end
end
