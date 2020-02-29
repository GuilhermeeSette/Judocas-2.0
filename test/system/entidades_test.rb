require "application_system_test_case"

class EntidadesTest < ApplicationSystemTestCase
  setup do
    @entidade = entidades(:one)
  end

  test "visiting the index" do
    visit entidades_url
    assert_selector "h1", text: "Entidades"
  end

  test "creating a Entidade" do
    visit entidades_url
    click_on "New Entidade"

    fill_in "Bairro", with: @entidade.bairro
    fill_in "Cep", with: @entidade.cep
    fill_in "Cidade", with: @entidade.cidade
    fill_in "Cnpj", with: @entidade.cnpj
    fill_in "Estado", with: @entidade.estado
    fill_in "Nome", with: @entidade.nome
    fill_in "Numero residencia", with: @entidade.numero_residencia
    fill_in "Rua", with: @entidade.rua
    fill_in "Telefone1", with: @entidade.telefone1
    fill_in "Telefone2", with: @entidade.telefone2
    click_on "Create Entidade"

    assert_text "Entidade was successfully created"
    click_on "Back"
  end

  test "updating a Entidade" do
    visit entidades_url
    click_on "Edit", match: :first

    fill_in "Bairro", with: @entidade.bairro
    fill_in "Cep", with: @entidade.cep
    fill_in "Cidade", with: @entidade.cidade
    fill_in "Cnpj", with: @entidade.cnpj
    fill_in "Estado", with: @entidade.estado
    fill_in "Nome", with: @entidade.nome
    fill_in "Numero residencia", with: @entidade.numero_residencia
    fill_in "Rua", with: @entidade.rua
    fill_in "Telefone1", with: @entidade.telefone1
    fill_in "Telefone2", with: @entidade.telefone2
    click_on "Update Entidade"

    assert_text "Entidade was successfully updated"
    click_on "Back"
  end

  test "destroying a Entidade" do
    visit entidades_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Entidade was successfully destroyed"
  end
end
