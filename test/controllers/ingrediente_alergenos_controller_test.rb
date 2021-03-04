require "test_helper"

class IngredienteAlergenosControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get ingrediente_alergenos_create_url
    assert_response :success
  end

  test "should get destroy" do
    get ingrediente_alergenos_destroy_url
    assert_response :success
  end
end
