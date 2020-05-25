require 'test_helper'

class EntidadesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @entidade = entidades(:one)
  end

  test "should get index" do
    get entidades_url
    assert_response :success
  end

  test "should get new" do
    get new_entidade_url
    assert_response :success
  end

  test "should destroy entidade" do
    assert_difference('Entidade.count', -1) do
      delete entidade_url(@entidade)
    end

    assert_redirected_to entidades_url
  end
end
