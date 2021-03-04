require "application_system_test_case"

class AlergenosTest < ApplicationSystemTestCase
  setup do
    @alergeno = alergenos(:one)
  end

  test "visiting the index" do
    visit alergenos_url
    assert_selector "h1", text: "Alergenos"
  end

  test "creating a Alergeno" do
    visit alergenos_url
    click_on "New Alergeno"

    fill_in "Nombre", with: @alergeno.nombre
    click_on "Create Alergeno"

    assert_text "Alergeno was successfully created"
    click_on "Back"
  end

  test "updating a Alergeno" do
    visit alergenos_url
    click_on "Edit", match: :first

    fill_in "Nombre", with: @alergeno.nombre
    click_on "Update Alergeno"

    assert_text "Alergeno was successfully updated"
    click_on "Back"
  end

  test "destroying a Alergeno" do
    visit alergenos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Alergeno was successfully destroyed"
  end
end
