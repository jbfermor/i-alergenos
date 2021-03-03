require "test_helper"

class PlatoIngredientesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get plato_ingredientes_create_url
    assert_response :success
  end

  test "should get destroy" do
    get plato_ingredientes_destroy_url
    assert_response :success
  end
end
