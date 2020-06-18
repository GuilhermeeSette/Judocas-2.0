require "application_system_test_case"

class JudocasTest < ApplicationSystemTestCase
  setup do
    @judoca = judocas(:one)
  end

  test "visiting the index" do
    visit judocas_url
    assert_selector "h1", text: "Judocas"
  end

  test "creating a Judoca" do
    visit judocas_url
    click_on "New Judoca"

    fill_in "Bairro", with: @judoca.bairro
    fill_in "Cep", with: @judoca.cep
    fill_in "Cidade", with: @judoca.cidade
    fill_in "Cpf", with: @judoca.cpf
    fill_in "Email", with: @judoca.email
    fill_in "Estado", with: @judoca.estado
    check "Is both roles" if @judoca.is_both_roles
    fill_in "Nome", with: @judoca.nome
    fill_in "Numero residencia", with: @judoca.numero_residencia
    fill_in "Observacoes", with: @judoca.observacoes
    fill_in "Registro cbj", with: @judoca.registro_cbj
    fill_in "Rg", with: @judoca.rg
    fill_in "Rua", with: @judoca.rua
    fill_in "Telefone1", with: @judoca.telefone1
    fill_in "Telefone2", with: @judoca.telefone2
    click_on "Create Judoca"

    assert_text "Judoca was successfully created"
    click_on "Back"
  end

  test "updating a Judoca" do
    visit judocas_url
    click_on "Edit", match: :first

    fill_in "Bairro", with: @judoca.bairro
    fill_in "Cep", with: @judoca.cep
    fill_in "Cidade", with: @judoca.cidade
    fill_in "Cpf", with: @judoca.cpf
    fill_in "Email", with: @judoca.email
    fill_in "Estado", with: @judoca.estado
    check "Is both roles" if @judoca.is_both_roles
    fill_in "Nome", with: @judoca.nome
    fill_in "Numero residencia", with: @judoca.numero_residencia
    fill_in "Observacoes", with: @judoca.observacoes
    fill_in "Registro cbj", with: @judoca.registro_cbj
    fill_in "Rg", with: @judoca.rg
    fill_in "Rua", with: @judoca.rua
    fill_in "Telefone1", with: @judoca.telefone1
    fill_in "Telefone2", with: @judoca.telefone2
    click_on "Update Judoca"

    assert_text "Judoca was successfully updated"
    click_on "Back"
  end

  test "destroying a Judoca" do
    visit judocas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Judoca was successfully destroyed"
  end
end
