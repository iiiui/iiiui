class UserSharesController < ApplicationController
  layout 'dashboard', :except => [:new, :show]
  # GET /user_shares
  # GET /user_shares.json
  def index
    @user_shares = UserShare.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_shares }
    end
  end

  # GET /user_shares/1
  # GET /user_shares/1.json
  def show
    @user_share = UserShare.find(params[:id])
    @cart_item = CartItem.new
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_share }
    end
  end

  # GET /user_shares/new
  # GET /user_shares/new.json
  def new
    @user_share = UserShare.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_share }
    end
  end

  # GET /user_shares/1/edit
  def edit
    @user_share = UserShare.find(params[:id])
  end

  # POST /user_shares
  # POST /user_shares.json
  def create
    @user_share = UserShare.new(params[:user_share])
    respond_to do |format|
      if @user_share.insert(current_user.id)
        format.html { redirect_to @user_share, notice: 'User share was successfully created.' }
        format.json { render json: @user_share, status: :created, location: @user_share }
      else
        format.html { render action: "new" }
        format.json { render json: @user_share.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_shares/1
  # PUT /user_shares/1.json
  def update
    @user_share = UserShare.find(params[:id])

    respond_to do |format|
      if @user_share.update_attributes(params[:user_share])
        format.html { redirect_to @user_share, notice: 'User share was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_share.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_shares/1
  # DELETE /user_shares/1.json
  def destroy
    @user_share = UserShare.find(params[:id])
    @user_share.destroy

    respond_to do |format|
      format.html { redirect_to user_shares_url }
      format.json { head :no_content }
    end
  end
end
