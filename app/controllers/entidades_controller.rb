class EntidadesController < ApplicationController
  before_action :set_entidade, only: [:show, :edit, :update, :destroy]

  # GET /entidades
  # GET /entidades.json
  def index
    @entidades = Entidade.all
  end

  # GET /entidades/1
  # GET /entidades/1.json
  def show
  end

  # GET /entidades/new
  def new
    @entidade = Entidade.new
  end

  # GET /entidades/1/edit
  def edit
  end

  # POST /entidades
  # POST /entidades.json
  def create
    @entidade = Entidade.new(entidade_params)

    respond_to do |format|
      if @entidade.save
        format.html { redirect_to @entidade, notice: 'Entidade was successfully created.' }
        format.json { render :show, status: :created, location: @entidade }
      else
        format.html { render :new }
        format.json { render json: @entidade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /entidades/1
  # PATCH/PUT /entidades/1.json
  def update
    respond_to do |format|
      if @entidade.update(entidade_params)
        format.html { redirect_to @entidade, notice: 'Entidade was successfully updated.' }
        format.json { render :show, status: :ok, location: @entidade }
      else
        format.html { render :edit }
        format.json { render json: @entidade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entidades/1
  # DELETE /entidades/1.json
  def destroy
    @entidade.destroy
    respond_to do |format|
      format.html { redirect_to entidades_url, notice: 'Entidade was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_entidade
    @entidade = Entidade.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def entidade_params
    params.require(:entidade).permit(:nome, :telefone1, :telefone2, :cnpj, :rua, :numero_residencia, :bairro, :cidade, :estado, :cep)
  end
end
