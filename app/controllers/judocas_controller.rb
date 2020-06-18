class JudocasController < ApplicationController
  before_action :set_judoca, only: [:show, :edit, :update, :destroy]

  # GET /judocas
  # GET /judocas.json
  def index
    @judocas = Judoca.all
  end

  # GET /judocas/1
  # GET /judocas/1.json
  def show
  end

  # GET /judocas/new
  def new
    @judoca = Judoca.new
  end

  # GET /judocas/1/edit
  def edit
  end

  # POST /judocas
  # POST /judocas.json
  def create
    @judoca = Judoca.new(judoca_params)

    respond_to do |format|
      if @judoca.save
        format.html { redirect_to @judoca, notice: 'Judoca was successfully created.' }
        format.json { render :show, status: :created, location: @judoca }
      else
        format.html { render :new }
        format.json { render json: @judoca.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /judocas/1
  # PATCH/PUT /judocas/1.json
  def update
    respond_to do |format|
      if @judoca.update(judoca_params)
        format.html { redirect_to @judoca, notice: 'Judoca was successfully updated.' }
        format.json { render :show, status: :ok, location: @judoca }
      else
        format.html { render :edit }
        format.json { render json: @judoca.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /judocas/1
  # DELETE /judocas/1.json
  def destroy
    @judoca.destroy
    respond_to do |format|
      format.html { redirect_to judocas_url, notice: 'Judoca was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_judoca
      @judoca = Judoca.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def judoca_params
      params.require(:judoca).permit(:nome, :registro_cbj, :telefone1, :telefone2, :email, :cpf, :observacoes, :rg, :rua, :numero_residencia, :bairro, :cidade, :estado, :cep, :is_both_roles)
    end
end
