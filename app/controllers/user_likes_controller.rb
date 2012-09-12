class UserLikesController < ApplicationController

  layout 'dashboard'
  # GET /user_likes
  # GET /user_likes.json
  def index
    @user_likes = UserLike.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_likes }
    end
  end

  # GET /user_likes/1
  # GET /user_likes/1.json
  def show
    @user_like = UserLike.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_like }
    end
  end

  # GET /user_likes/new
  # GET /user_likes/new.json
  def new
    @user_like = UserLike.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_like }
    end
  end

  # GET /user_likes/1/edit
  def edit
    @user_like = UserLike.find(params[:id])
  end

  # POST /user_likes
  # POST /user_likes.json
  def create
    @user_like = UserLike.new(params[:user_like])

    respond_to do |format|
      if @user_like.save
        format.html { redirect_to @user_like, notice: 'User like was successfully created.' }
        format.json { render json: @user_like, status: :created, location: @user_like }
      else
        format.html { render action: "new" }
        format.json { render json: @user_like.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_likes/1
  # PUT /user_likes/1.json
  def update
    @user_like = UserLike.find(params[:id])

    respond_to do |format|
      if @user_like.update_attributes(params[:user_like])
        format.html { redirect_to @user_like, notice: 'User like was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_like.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_likes/1
  # DELETE /user_likes/1.json
  def destroy
    @user_like = UserLike.find(params[:id])
    @user_like.destroy

    respond_to do |format|
      format.html { redirect_to user_likes_url }
      format.json { head :no_content }
    end
  end
end
