class AlunosController < ApplicationController
  before_action :set_aluno, only: [:show, :edit, :update, :destroy, :become_professor]

  # GET /alunos
  # GET /alunos.json
  def index
    @judocas = if params[:search].present?
      Judoca.search_like('nome', params[:search])
   else
    Judoca.all
   end
  end
  
  private
  # Only allow a list of trusted parameters through.
  def aluno_params
    params.require(:aluno).permit(:nome, :registro_cbj, :telefone1, :telefone2, :email, :cpf, :observacoes, :rg, :rua, :numero_residencia, :bairro, :cidade, :estado, :cep)
  end
end
