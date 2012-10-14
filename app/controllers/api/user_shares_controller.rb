class Api::UserSharesController < ApplicationController
  respond_to :json
  def index
    @user_shares = UserShare.all
    render :json => @user_shares
  end

  def show
    @user_share = UserShare.find(params[:id])
    render :json => @user_share
  end

  def create
    @user_share = UserShare.new(params[:user_share])
    photo_ids =  params[:photo][:id]
    if @user_share.insert(current_user.id,photo_ids)
      render json: @user_share, status: :created
    else
      render json: @user_share.errors, status: :unprocessable_entity
    end
  end

  # PUT /user_shares/1
  # PUT /user_shares/1.json
  def update
    @user_share = UserShare.find(params[:id])
  end

  def destroy
    @user_share = UserShare.find(params[:id])
    @user_share.destroy
  end
end
