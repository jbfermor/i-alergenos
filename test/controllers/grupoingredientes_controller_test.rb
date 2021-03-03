require "test_helper"

class GrupoingredientesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @grupoingrediente = grupoingredientes(:one)
  end

  test "should get index" do
    get grupoingredientes_url
    assert_response :success
  end

  test "should get new" do
    get new_grupoingrediente_url
    assert_response :success
  end

  test "should create grupoingrediente" do
    assert_difference('Grupoingrediente.count') do
      post grupoingredientes_url, params: { grupoingrediente: { nombre: @grupoingrediente.nombre } }
    end

    assert_redirected_to grupoingrediente_url(Grupoingrediente.last)
  end

  test "should show grupoingrediente" do
    get grupoingrediente_url(@grupoingrediente)
    assert_response :success
  end

  test "should get edit" do
    get edit_grupoingrediente_url(@grupoingrediente)
    assert_response :success
  end

  test "should update grupoingrediente" do
    patch grupoingrediente_url(@grupoingrediente), params: { grupoingrediente: { nombre: @grupoingrediente.nombre } }
    assert_redirected_to grupoingrediente_url(@grupoingrediente)
  end

  test "should destroy grupoingrediente" do
    assert_difference('Grupoingrediente.count', -1) do
      delete grupoingrediente_url(@grupoingrediente)
    end

    assert_redirected_to grupoingredientes_url
  end
end
