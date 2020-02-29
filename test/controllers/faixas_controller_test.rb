require 'test_helper'

class FaixasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @faixa = faixas(:one)
  end

  test "should get index" do
    get faixas_url
    assert_response :success
  end

  test "should get new" do
    get new_faixa_url
    assert_response :success
  end

  test "should create faixa" do
    assert_difference('Faixa.count') do
      post faixas_url, params: { faixa: { cor: @faixa.cor, data_entrega: @faixa.data_entrega } }
    end

    assert_redirected_to faixa_url(Faixa.last)
  end

  test "should show faixa" do
    get faixa_url(@faixa)
    assert_response :success
  end

  test "should get edit" do
    get edit_faixa_url(@faixa)
    assert_response :success
  end

  test "should update faixa" do
    patch faixa_url(@faixa), params: { faixa: { cor: @faixa.cor, data_entrega: @faixa.data_entrega } }
    assert_redirected_to faixa_url(@faixa)
  end

  test "should destroy faixa" do
    assert_difference('Faixa.count', -1) do
      delete faixa_url(@faixa)
    end

    assert_redirected_to faixas_url
  end
end
