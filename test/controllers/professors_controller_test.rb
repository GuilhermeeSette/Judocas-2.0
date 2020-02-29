require 'test_helper'

class ProfessorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @professor = professors(:one)
  end

  test "should get index" do
    get professors_url
    assert_response :success
  end

  test "should get new" do
    get new_professor_url
    assert_response :success
  end

  test "should create professor" do
    assert_difference('Professor.count') do
      post professors_url, params: { professor: { bairro: @professor.bairro, cep: @professor.cep, cidade: @professor.cidade, cpf: @professor.cpf, email: @professor.email, estado: @professor.estado, nome: @professor.nome, numero_residencia: @professor.numero_residencia, observacoes: @professor.observacoes, registro_cbj: @professor.registro_cbj, rg: @professor.rg, rua: @professor.rua, telefone1: @professor.telefone1, telefone2: @professor.telefone2 } }
    end

    assert_redirected_to professor_url(Professor.last)
  end

  test "should show professor" do
    get professor_url(@professor)
    assert_response :success
  end

  test "should get edit" do
    get edit_professor_url(@professor)
    assert_response :success
  end

  test "should update professor" do
    patch professor_url(@professor), params: { professor: { bairro: @professor.bairro, cep: @professor.cep, cidade: @professor.cidade, cpf: @professor.cpf, email: @professor.email, estado: @professor.estado, nome: @professor.nome, numero_residencia: @professor.numero_residencia, observacoes: @professor.observacoes, registro_cbj: @professor.registro_cbj, rg: @professor.rg, rua: @professor.rua, telefone1: @professor.telefone1, telefone2: @professor.telefone2 } }
    assert_redirected_to professor_url(@professor)
  end

  test "should destroy professor" do
    assert_difference('Professor.count', -1) do
      delete professor_url(@professor)
    end

    assert_redirected_to professors_url
  end
end
