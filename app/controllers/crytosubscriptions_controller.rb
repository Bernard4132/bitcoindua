class CrytosubscriptionsController < ApplicationController
   
  before_action :set_crytosubscription, only: [:show, :edit, :update, :destroy]
  layout "blog"

  # GET /crytosubscriptions
  # GET /crytosubscriptions.json
  def index
    @crytosubscriptions = Crytosubscription.all
  end

  # GET /crytosubscriptions/1
  # GET /crytosubscriptions/1.json
  def show
  end

  # GET /crytosubscriptions/new
  def new
    @crytosubscription = Crytosubscription.new
  end

  # GET /crytosubscriptions/1/edit
  def edit
  end

  # POST /crytosubscriptions
  # POST /crytosubscriptions.json
  def create
    @crytosubscription = Crytosubscription.new(crytosubscription_params)

    respond_to do |format|
      if @crytosubscription.save
        RespondMailer.delay(run_at: 1.day.from_now).crypt_message(@crytosubscription)
        RespondMailer.delay(run_at: 3.days.from_now).crypt_message2(@crytosubscription)
        RespondMailer.delay(run_at: 9.days.from_now).crypt_message3(@crytosubscription)
        RespondMailer.delay(run_at: 15.days.from_now).crypt_message4(@crytosubscription)
        format.html { redirect_to "/thankyou" }
        format.json { render :show, status: :created, location: @crytosubscription }
      else
        format.html { render :new }
        format.json { render json: @crytosubscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /crytosubscriptions/1
  # PATCH/PUT /crytosubscriptions/1.json
  def update
    respond_to do |format|
      if @crytosubscription.update(crytosubscription_params)
        format.html { redirect_to @crytosubscription, notice: 'Thanks for seeking for expert Advice. You will hear from us.' }
        format.json { render :show, status: :ok, location: @crytosubscription }
      else
        format.html { render :edit }
        format.json { render json: @crytosubscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crytosubscriptions/1
  # DELETE /crytosubscriptions/1.json
  def destroy
    @crytosubscription.destroy
    respond_to do |format|
      format.html { redirect_to crytosubscriptions_url, notice: 'Crytosubscription was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crytosubscription
      @crytosubscription = Crytosubscription.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def crytosubscription_params
      params.require(:crytosubscription).permit(:email, :phone, :name)
    end
end
