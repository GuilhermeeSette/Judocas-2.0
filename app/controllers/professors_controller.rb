class ProfessorsController < ApplicationController
  before_action :set_professor, only: [:show, :edit, :update, :destroy]

  # GET /professors
  # GET /professors.json
  def index
    @professors = if params[:search].present?
                    Professor.search_like('nome', params[:search])
                  else
                    Professor.all
                  end
  end

  # GET /professors/1
  # GET /professors/1.json
  def show
  end

  # GET /professors/new
  def new
    @professor = Professor.new
  end

  # GET /professors/1/edit
  def edit
  end

  # POST /professors
  # POST /professors.json
  def create
    @professor = Professor.new(professor_params)

    respond_to do |format|
      if @professor.save
        format.html { redirect_to @professor, notice: 'Professor was successfully created.' }
        format.json { render :show, status: :created, location: @professor }
      else
        format.html { render :new }
        format.json { render json: @professor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /professors/1
  # PATCH/PUT /professors/1.json
  def update
    respond_to do |format|
      if @professor.update(professor_params)
        format.html { redirect_to @professor, notice: 'Professor was successfully updated.' }
        format.json { render :show, status: :ok, location: @professor }
      else
        format.html { render :edit }
        format.json { render json: @professor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /professors/1
  # DELETE /professors/1.json
  def destroy
    @professor.destroy
    respond_to do |format|
      format.html { redirect_to professors_url, notice: 'Professor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_professor
    @professor = Professor.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def professor_params
    params.require(:professor).permit(:nome, :registro_cbj, :telefone1, :telefone2, :email, :cpf, :observacoes, :rg, :rua, :numero_residencia, :bairro, :cidade, :estado, :cep)
  end
end
