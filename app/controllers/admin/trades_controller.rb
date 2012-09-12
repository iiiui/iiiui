class Admin::TradesController < ApplicationController

  before_filter :isadmin
  # GET /trades
  # GET /trades.json
  def index
    @trades = Trade.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @trades }
    end
  end

  # GET /trades/1
  # GET /trades/1.json
  def show
    @trade = Trade.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @trade }
    end
  end

  # GET /trades/new
  # GET /trades/new.json
  def new
    @trade = Trade.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @trade }
    end
  end

  # GET /trades/1/edit
  def edit
    @trade = Trade.find(params[:id])
  end

  # POST /trades
  # POST /trades.json
  def create
    @trade = Trade.new(params[:trade])

    respond_to do |format|
      if @trade.save
        format.html { redirect_to @trade, notice: 'Trade was successfully created.' }
        format.json { render json: @trade, status: :created, location: @trade }
      else
        format.html { render action: "new" }
        format.json { render json: @trade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /trades/1
  # PUT /trades/1.json
  def update
    @trade = Trade.find(params[:id])

    respond_to do |format|
      if @trade.update_attributes(params[:trade])
        format.html { redirect_to @trade, notice: 'Trade was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @trade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trades/1
  # DELETE /trades/1.json
  def destroy
    @trade = Trade.find(params[:id])
    @trade.destroy

    respond_to do |format|
      format.html { redirect_to trades_url }
      format.json { head :no_content }
    end
  end
end
