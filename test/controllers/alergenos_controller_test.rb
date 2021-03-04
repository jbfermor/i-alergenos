require "test_helper"

class AlergenosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @alergeno = alergenos(:one)
  end

  test "should get index" do
    get alergenos_url
    assert_response :success
  end

  test "should get new" do
    get new_alergeno_url
    assert_response :success
  end

  test "should create alergeno" do
    assert_difference('Alergeno.count') do
      post alergenos_url, params: { alergeno: { nombre: @alergeno.nombre } }
    end

    assert_redirected_to alergeno_url(Alergeno.last)
  end

  test "should show alergeno" do
    get alergeno_url(@alergeno)
    assert_response :success
  end

  test "should get edit" do
    get edit_alergeno_url(@alergeno)
    assert_response :success
  end

  test "should update alergeno" do
    patch alergeno_url(@alergeno), params: { alergeno: { nombre: @alergeno.nombre } }
    assert_redirected_to alergeno_url(@alergeno)
  end

  test "should destroy alergeno" do
    assert_difference('Alergeno.count', -1) do
      delete alergeno_url(@alergeno)
    end

    assert_redirected_to alergenos_url
  end
end
