require 'test_helper'

class ProfessorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @professor = professors(:one)
  end

  test "should get index" do
    get professors_url
    assert_response :success
  end
end
