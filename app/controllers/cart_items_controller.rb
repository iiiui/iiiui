#encoding:utf-8
class CartItemsController < ApplicationController
  # GET /cart_items
  # GET /cart_items.json
  def index
    # @cart_items = CartItem.all
    @cart = current_cart

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cart_items }
    end
  end

  # GET /cart_items/1
  # GET /cart_items/1.json
  def show
    @cart_item = CartItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cart_item }
    end
  end

  # GET /cart_items/new
  # GET /cart_items/new.json
  def new
    @cart_item = CartItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cart_item }
    end
  end

  # GET /cart_items/1/edit
  def edit
    @cart_item = CartItem.find(params[:id])
  end

  # POST /cart_items
  # POST /cart_items.json
  def create
    @cart = current_cart
    update_flag = false
    @cart.cart_items.each do | cart_item|
      # p cart_item.item.id.to_s
      # p params[:cart_item][:item_id].to_s
      if cart_item.item.id.to_s == params[:cart_item][:item_id].to_s
        update_flag = true
        CartItem.update(cart_item.id,:count => cart_item.count + Integer(params[:cart_item][:count]))
      end
    end
    if !update_flag
      item = Item.find(params[:cart_item][:item_id])
      @cart_item = @cart.cart_items.build(:item => item)
      @cart_item.count = params[:cart_item][:count]  
      @cart_item.save
    end
    redirect_to cart_items_url, notice: '添加成功'
  end

  # PUT /cart_items/1
  # PUT /cart_items/1.json
  def update
    @cart_item = CartItem.find(params[:id])

    respond_to do |format|
      if @cart_item.update_attributes(params[:cart_item])
        format.html { redirect_to @cart_item, notice: 'Cart item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cart_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cart_items/1
  # DELETE /cart_items/1.json
  def destroy
    @cart_item = CartItem.find(params[:id])
    @cart_item.destroy

    respond_to do |format|
      format.html { redirect_to cart_items_url }
      format.json { head :no_content }
    end
  end
end
