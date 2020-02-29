require 'test_helper'

class AlunosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aluno = alunos(:one)
  end

  test "should get index" do
    get alunos_url
    assert_response :success
  end

  test "should get new" do
    get new_aluno_url
    assert_response :success
  end

  test "should create aluno" do
    assert_difference('Aluno.count') do
      post alunos_url, params: { aluno: { bairro: @aluno.bairro, cep: @aluno.cep, cidade: @aluno.cidade, cpf: @aluno.cpf, email: @aluno.email, estado: @aluno.estado, nome: @aluno.nome, numero_residencia: @aluno.numero_residencia, observacoes: @aluno.observacoes, registro_cbj: @aluno.registro_cbj, rg: @aluno.rg, rua: @aluno.rua, telefone1: @aluno.telefone1, telefone2: @aluno.telefone2 } }
    end

    assert_redirected_to aluno_url(Aluno.last)
  end

  test "should show aluno" do
    get aluno_url(@aluno)
    assert_response :success
  end

  test "should get edit" do
    get edit_aluno_url(@aluno)
    assert_response :success
  end

  test "should update aluno" do
    patch aluno_url(@aluno), params: { aluno: { bairro: @aluno.bairro, cep: @aluno.cep, cidade: @aluno.cidade, cpf: @aluno.cpf, email: @aluno.email, estado: @aluno.estado, nome: @aluno.nome, numero_residencia: @aluno.numero_residencia, observacoes: @aluno.observacoes, registro_cbj: @aluno.registro_cbj, rg: @aluno.rg, rua: @aluno.rua, telefone1: @aluno.telefone1, telefone2: @aluno.telefone2 } }
    assert_redirected_to aluno_url(@aluno)
  end

  test "should destroy aluno" do
    assert_difference('Aluno.count', -1) do
      delete aluno_url(@aluno)
    end

    assert_redirected_to alunos_url
  end
end
