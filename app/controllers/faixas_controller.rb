class FaixasController < ApplicationController
  before_action :set_faixa, only: [:show, :edit, :update, :destroy]

  # GET /faixas
  # GET /faixas.json
  def index
    @faixas = Faixa.all
  end

  # GET /faixas/1
  # GET /faixas/1.json
  def show
  end

  # GET /faixas/new
  def new
    @faixa = Faixa.new
  end

  # GET /faixas/1/edit
  def edit
  end

  # POST /faixas
  # POST /faixas.json
  def create
    @faixa = Faixa.new(faixa_params)

    respond_to do |format|
      if @faixa.save
        format.html { redirect_to @faixa, notice: 'Faixa was successfully created.' }
        format.json { render :show, status: :created, location: @faixa }
      else
        format.html { render :new }
        format.json { render json: @faixa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /faixas/1
  # PATCH/PUT /faixas/1.json
  def update
    respond_to do |format|
      if @faixa.update(faixa_params)
        format.html { redirect_to @faixa, notice: 'Faixa was successfully updated.' }
        format.json { render :show, status: :ok, location: @faixa }
      else
        format.html { render :edit }
        format.json { render json: @faixa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /faixas/1
  # DELETE /faixas/1.json
  def destroy
    @faixa.destroy
    respond_to do |format|
      format.html { redirect_to faixas_url, notice: 'Faixa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_faixa
    @faixa = Faixa.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def faixa_params
    params.require(:faixa).permit(:cor, :data_entrega)
  end
end
