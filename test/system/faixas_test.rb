require "application_system_test_case"

class FaixasTest < ApplicationSystemTestCase
  setup do
    @faixa = faixas(:one)
  end

  test "visiting the index" do
    visit faixas_url
    assert_selector "h1", text: "Faixas"
  end

  test "creating a Faixa" do
    visit faixas_url
    click_on "New Faixa"

    fill_in "Cor", with: @faixa.cor
    fill_in "Data entrega", with: @faixa.data_entrega
    click_on "Create Faixa"

    assert_text "Faixa was successfully created"
    click_on "Back"
  end

  test "updating a Faixa" do
    visit faixas_url
    click_on "Edit", match: :first

    fill_in "Cor", with: @faixa.cor
    fill_in "Data entrega", with: @faixa.data_entrega
    click_on "Update Faixa"

    assert_text "Faixa was successfully updated"
    click_on "Back"
  end

  test "destroying a Faixa" do
    visit faixas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Faixa was successfully destroyed"
  end
end
