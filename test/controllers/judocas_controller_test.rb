require 'test_helper'

class JudocasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @judoca = judocas(:one)
  end

  test "should get index" do
    get judocas_url
    assert_response :success
  end

  test "should get new" do
    get new_judoca_url
    assert_response :success
  end

  test "should show judoca" do
    get judoca_url(@judoca)
    assert_response :success
  end

  test "should get edit" do
    get edit_judoca_url(@judoca)
    assert_response :success
  end
end
