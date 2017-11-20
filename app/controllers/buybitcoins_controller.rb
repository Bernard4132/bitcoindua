class BuybitcoinsController < ApplicationController
  before_action :set_buybitcoin, only: [:show, :edit, :update, :destroy]

  # GET /buybitcoins
  # GET /buybitcoins.json
  def index
    @buybitcoins = Buybitcoin.all
  end

  # GET /buybitcoins/1
  # GET /buybitcoins/1.json
  def show
  end

  # GET /buybitcoins/new
  def new
    session[:buybitcoin_params] ||= {}
     @buybitcoin = Buybitcoin.new(session[:buybitcoin_params])
     @buybitcoin.current_step = session[:buybitcoin_step]
  end

  # GET /buybitcoins/1/edit
  def edit
  end

  # POST /buybitcoins
  # POST /buybitcoins.json
  def create
  session[:buybitcoin_params].deep_merge!(params[:buybitcoin]) if params[:buybitcoin]
  @buybitcoin = Buybitcoin.new(session[:buybitcoin_params])
  @buybitcoin.current_step = session[:buybitcoin_step]
  @buybitcoin.user = current_user
  if @buybitcoin.valid?
    if params[:back_button]
      @buybitcoin.previous_step
    elsif @buybitcoin.last_step?
      @buybitcoin.save if @buybitcoin.all_valid?
    else
      @buybitcoin.next_step
    end
    session[:buybitcoin_step] = @buybitcoin.current_step
  end
  if @buybitcoin.new_record?
    render "new"
  else
    session[:buybitcoin_step] = session[:buybitcoin_params] = nil
    flash[:notice] = "Your Bitcoin buy order has been made now. You will be contacted shortly. Thank you!"
    redirect_to "/"
  end
  end

  # PATCH/PUT /buybitcoins/1
  # PATCH/PUT /buybitcoins/1.json
  def update
    respond_to do |format|
      if @buybitcoin.update(buybitcoin_params)
        format.html { redirect_to @buybitcoin, notice: 'Buybitcoin was successfully updated.' }
        format.json { render :show, status: :ok, location: @buybitcoin }
      else
        format.html { render :edit }
        format.json { render json: @buybitcoin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /buybitcoins/1
  # DELETE /buybitcoins/1.json
  def destroy
    @buybitcoin.destroy
    respond_to do |format|
      format.html { redirect_to buybitcoins_url, notice: 'Buybitcoin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_buybitcoin
      @buybitcoin = Buybitcoin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def buybitcoin_params
      params.require(:buybitcoin).permit(:amount, :converted, :paymentoption, :transactionid, :datetransact, :timetransact, :btcaddress, :ordernumber)
    end
end
