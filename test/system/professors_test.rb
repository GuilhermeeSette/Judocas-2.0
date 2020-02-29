require "application_system_test_case"

class ProfessorsTest < ApplicationSystemTestCase
  setup do
    @professor = professors(:one)
  end

  test "visiting the index" do
    visit professors_url
    assert_selector "h1", text: "Professors"
  end

  test "creating a Professor" do
    visit professors_url
    click_on "New Professor"

    fill_in "Bairro", with: @professor.bairro
    fill_in "Cep", with: @professor.cep
    fill_in "Cidade", with: @professor.cidade
    fill_in "Cpf", with: @professor.cpf
    fill_in "Email", with: @professor.email
    fill_in "Estado", with: @professor.estado
    fill_in "Nome", with: @professor.nome
    fill_in "Numero residencia", with: @professor.numero_residencia
    fill_in "Observacoes", with: @professor.observacoes
    fill_in "Registro cbj", with: @professor.registro_cbj
    fill_in "Rg", with: @professor.rg
    fill_in "Rua", with: @professor.rua
    fill_in "Telefone1", with: @professor.telefone1
    fill_in "Telefone2", with: @professor.telefone2
    click_on "Create Professor"

    assert_text "Professor was successfully created"
    click_on "Back"
  end

  test "updating a Professor" do
    visit professors_url
    click_on "Edit", match: :first

    fill_in "Bairro", with: @professor.bairro
    fill_in "Cep", with: @professor.cep
    fill_in "Cidade", with: @professor.cidade
    fill_in "Cpf", with: @professor.cpf
    fill_in "Email", with: @professor.email
    fill_in "Estado", with: @professor.estado
    fill_in "Nome", with: @professor.nome
    fill_in "Numero residencia", with: @professor.numero_residencia
    fill_in "Observacoes", with: @professor.observacoes
    fill_in "Registro cbj", with: @professor.registro_cbj
    fill_in "Rg", with: @professor.rg
    fill_in "Rua", with: @professor.rua
    fill_in "Telefone1", with: @professor.telefone1
    fill_in "Telefone2", with: @professor.telefone2
    click_on "Update Professor"

    assert_text "Professor was successfully updated"
    click_on "Back"
  end

  test "destroying a Professor" do
    visit professors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Professor was successfully destroyed"
  end
end
