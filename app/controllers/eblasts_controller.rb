class EblastsController < ApplicationController
  before_action :set_eblast, only: [:show, :edit, :update, :destroy]

  # GET /eblasts
  # GET /eblasts.json
  def index
    @eblasts = Eblast.all
  end

  # GET /eblasts/1
  # GET /eblasts/1.json
  def show
  end

  # GET /eblasts/new
  def new
    @eblast = Eblast.new
  end

  # GET /eblasts/1/edit
  def edit
  end

def import
  Eblast.import(params[:file])
  redirect_to "/eblasts", notice: "Emails imported."
end

  # POST /eblasts
  # POST /eblasts.json
  def create
    @eblast = Eblast.new(eblast_params)

    respond_to do |format|
      if @eblast.save
        format.html { redirect_to @eblast, notice: 'Eblast was successfully created.' }
        format.json { render :show, status: :created, location: @eblast }
      else
        format.html { render :new }
        format.json { render json: @eblast.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eblasts/1
  # PATCH/PUT /eblasts/1.json
  def update
    respond_to do |format|
      if @eblast.update(eblast_params)
        format.html { redirect_to @eblast, notice: 'Eblast was successfully updated.' }
        format.json { render :show, status: :ok, location: @eblast }
      else
        format.html { render :edit }
        format.json { render json: @eblast.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eblasts/1
  # DELETE /eblasts/1.json
  def destroy
    @eblast.destroy
    respond_to do |format|
      format.html { redirect_to eblasts_url, notice: 'Eblast was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eblast
      @eblast = Eblast.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def eblast_params
      params.require(:eblast).permit(:email)
    end
end
