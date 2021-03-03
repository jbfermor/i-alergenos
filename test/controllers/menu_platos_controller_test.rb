require "test_helper"

class MenuPlatosControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get menu_platos_create_url
    assert_response :success
  end

  test "should get destroy" do
    get menu_platos_destroy_url
    assert_response :success
  end
end
