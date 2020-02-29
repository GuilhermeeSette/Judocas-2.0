require "application_system_test_case"

class AlunosTest < ApplicationSystemTestCase
  setup do
    @aluno = alunos(:one)
  end

  test "visiting the index" do
    visit alunos_url
    assert_selector "h1", text: "Alunos"
  end

  test "creating a Aluno" do
    visit alunos_url
    click_on "New Aluno"

    fill_in "Bairro", with: @aluno.bairro
    fill_in "Cep", with: @aluno.cep
    fill_in "Cidade", with: @aluno.cidade
    fill_in "Cpf", with: @aluno.cpf
    fill_in "Email", with: @aluno.email
    fill_in "Estado", with: @aluno.estado
    fill_in "Nome", with: @aluno.nome
    fill_in "Numero residencia", with: @aluno.numero_residencia
    fill_in "Observacoes", with: @aluno.observacoes
    fill_in "Registro cbj", with: @aluno.registro_cbj
    fill_in "Rg", with: @aluno.rg
    fill_in "Rua", with: @aluno.rua
    fill_in "Telefone1", with: @aluno.telefone1
    fill_in "Telefone2", with: @aluno.telefone2
    click_on "Create Aluno"

    assert_text "Aluno was successfully created"
    click_on "Back"
  end

  test "updating a Aluno" do
    visit alunos_url
    click_on "Edit", match: :first

    fill_in "Bairro", with: @aluno.bairro
    fill_in "Cep", with: @aluno.cep
    fill_in "Cidade", with: @aluno.cidade
    fill_in "Cpf", with: @aluno.cpf
    fill_in "Email", with: @aluno.email
    fill_in "Estado", with: @aluno.estado
    fill_in "Nome", with: @aluno.nome
    fill_in "Numero residencia", with: @aluno.numero_residencia
    fill_in "Observacoes", with: @aluno.observacoes
    fill_in "Registro cbj", with: @aluno.registro_cbj
    fill_in "Rg", with: @aluno.rg
    fill_in "Rua", with: @aluno.rua
    fill_in "Telefone1", with: @aluno.telefone1
    fill_in "Telefone2", with: @aluno.telefone2
    click_on "Update Aluno"

    assert_text "Aluno was successfully updated"
    click_on "Back"
  end

  test "destroying a Aluno" do
    visit alunos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Aluno was successfully destroyed"
  end
end
