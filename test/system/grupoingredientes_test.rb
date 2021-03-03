require "application_system_test_case"

class GrupoingredientesTest < ApplicationSystemTestCase
  setup do
    @grupoingrediente = grupoingredientes(:one)
  end

  test "visiting the index" do
    visit grupoingredientes_url
    assert_selector "h1", text: "Grupoingredientes"
  end

  test "creating a Grupoingrediente" do
    visit grupoingredientes_url
    click_on "New Grupoingrediente"

    fill_in "Nombre", with: @grupoingrediente.nombre
    click_on "Create Grupoingrediente"

    assert_text "Grupoingrediente was successfully created"
    click_on "Back"
  end

  test "updating a Grupoingrediente" do
    visit grupoingredientes_url
    click_on "Edit", match: :first

    fill_in "Nombre", with: @grupoingrediente.nombre
    click_on "Update Grupoingrediente"

    assert_text "Grupoingrediente was successfully updated"
    click_on "Back"
  end

  test "destroying a Grupoingrediente" do
    visit grupoingredientes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Grupoingrediente was successfully destroyed"
  end
end
