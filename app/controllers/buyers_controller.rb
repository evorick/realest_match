class BuyersController < ApplicationController
  before_action :set_buyer, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :search_buyers]

  # GET /buyers
  # GET /buyers.json
  def index
    @q = Buyer.ransack(params[:q])
    @buyers = @q.result
  end

  
  def search_buyers
  end

  # GET /buyers/1
  # GET /buyers/1.json
  def show
  end

  # GET /buyers/new
  def new
    # @buyer = Buyer.new          #Old code, prior to Devise.
    @buyer = current_user.buyers.build
  end

  # GET /buyers/1/edit
  def edit
  end

  # POST /buyers
  # POST /buyers.json
  def create
    @buyer = current_user.buyers.build(buyer_params)

    respond_to do |format|
      if @buyer.save
        format.html { redirect_to @buyer, notice: 'Buyer was successfully created.' }
        format.json { render :show, status: :created, location: @buyer }
      else
        format.html { render :new }
        format.json { render json: @buyer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /buyers/1
  # PATCH/PUT /buyers/1.json
  def update
    respond_to do |format|
      if @buyer.update(buyer_params)
        format.html { redirect_to @buyer, notice: 'Buyer was successfully updated.' }
        format.json { render :show, status: :ok, location: @buyer }
      else
        format.html { render :edit }
        format.json { render json: @buyer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /buyers/1
  # DELETE /buyers/1.json
  def destroy
    @buyer.destroy
    respond_to do |format|
      format.html { redirect_to buyers_url, notice: 'Buyer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_buyer
      @buyer = Buyer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def buyer_params
      params.require(:buyer).permit(:first_name, :last_name, :phone_number, :email, :number_bedrooms, :number_bathrooms, :city, :state, :min_price, :max_price)
    end
end
