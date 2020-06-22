class ProfessorsController < ApplicationController
  before_action :set_professor, only: [:show, :edit, :update, :destroy]

  # GET /professors
  # GET /professors.json
  def index
    @judocas = if params[:search].present?
                    Judoca.search_like('nome', params[:search]).is_professor
                  else
                    Judoca.all.is_professor
                  end
  end

  private
  # Only allow a list of trusted parameters through.
  def professor_params
    params.require(:professor).permit(:nome, :registro_cbj, :telefone1, :telefone2, :email, :cpf, :observacoes, :rg, :rua, :numero_residencia, :bairro, :cidade, :estado, :cep)
  end
end
