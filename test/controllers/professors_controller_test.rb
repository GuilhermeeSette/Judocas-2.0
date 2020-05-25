require 'test_helper'

class ProfessorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @professor = professors(:one)
  end

  test "should get index" do
    get professors_url
    assert_response :success
  end

  test "should get edit" do
    get edit_professor_url(@professor)
    assert_response :success
  end

  test "should destroy professor" do
    assert_difference('Professor.count', -1) do
      delete professor_url(@professor)
    end

    assert_redirected_to professors_url
  end
end
