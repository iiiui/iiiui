class Admin::UserSharesController < ApplicationController
  layout 'admin'
  before_filter :isadmin
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
    @user_like = UserLike.new
    @share = Share.new
    @comment = Comment.new
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_share }
    end
  end

  # GET /user_shares/new
  # GET /user_shares/new.json
  def new
    @user_share = UserShare.new
    @photo = @user_share.photos.build
    3.times { @tag = @user_share.tags.build}
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
    if @user_share.insert(current_user.id)
      render json: @user_share, status: :created
    else
      render json: @user_share.errors, status: :unprocessable_entity
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
