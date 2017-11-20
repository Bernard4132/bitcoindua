class SellbitcoinsController < ApplicationController
  before_action :set_sellbitcoin, only: [:show, :edit, :update, :destroy]

  # GET /sellbitcoins
  # GET /sellbitcoins.json
  def index
    @sellbitcoins = Sellbitcoin.all
  end

  # GET /sellbitcoins/1
  # GET /sellbitcoins/1.json
  def show
  end

  # GET /sellbitcoins/new
  def new
    session[:sellbitcoin_params] ||= {}
     @sellbitcoin = Sellbitcoin.new(session[:sellbitcoin_params])
     @sellbitcoin.current_step = session[:sellbitcoin_step]
  end

  # GET /sellbitcoins/1/edit
  def edit
  end

  # POST /sellbitcoins
  # POST /sellbitcoins.json
  def create
  session[:sellbitcoin_params].deep_merge!(params[:sellbitcoin]) if params[:sellbitcoin]
  @sellbitcoin = Sellbitcoin.new(session[:sellbitcoin_params])
  @sellbitcoin.current_step = session[:sellbitcoin_step]
  @sellbitcoin.user = current_user
  if @sellbitcoin.valid?
    if params[:back_button]
      @sellbitcoin.previous_step
    elsif @sellbitcoin.last_step?
      @sellbitcoin.save if @sellbitcoin.all_valid?
    else
      @sellbitcoin.next_step
    end
    session[:sellbitcoin_step] = @sellbitcoin.current_step
  end
  if @sellbitcoin.new_record?
    render "new"
  else
    session[:sellbitcoin_step] = session[:sellbitcoin_params] = nil
    flash[:notice] = "Your Bitcoin sell order has been made now. You will be contacted shortly. Thank you!"
    redirect_to "/"
  end
  end

  # PATCH/PUT /sellbitcoins/1
  # PATCH/PUT /sellbitcoins/1.json
  def update
    respond_to do |format|
      if @sellbitcoin.update(sellbitcoin_params)
        format.html { redirect_to @sellbitcoin, notice: 'Sellbitcoin was successfully updated.' }
        format.json { render :show, status: :ok, location: @sellbitcoin }
      else
        format.html { render :edit }
        format.json { render json: @sellbitcoin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sellbitcoins/1
  # DELETE /sellbitcoins/1.json
  def destroy
    @sellbitcoin.destroy
    respond_to do |format|
      format.html { redirect_to sellbitcoins_url, notice: 'Sellbitcoin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sellbitcoin
      @sellbitcoin = Sellbitcoin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sellbitcoin_params
      params.require(:sellbitcoin).permit(:amount, :converted, :paymentoption, :ordernumber, :mobilemoneyname, :mobilemoneynumber, :accept)
    end
end
