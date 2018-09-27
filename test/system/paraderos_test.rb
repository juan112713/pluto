require "application_system_test_case"

class ParaderosTest < ApplicationSystemTestCase
  setup do
    @paradero = paraderos(:one)
  end

  test "visiting the index" do
    visit paraderos_url
    assert_selector "h1", text: "Paraderos"
  end

  test "creating a Paradero" do
    visit paraderos_url
    click_on "New Paradero"

    fill_in "Nombre P", with: @paradero.nombre_p
    fill_in "Tipo P", with: @paradero.tipo_p
    fill_in "Ubicacion P", with: @paradero.ubicacion_p
    click_on "Create Paradero"

    assert_text "Paradero was successfully created"
    click_on "Back"
  end

  test "updating a Paradero" do
    visit paraderos_url
    click_on "Edit", match: :first

    fill_in "Nombre P", with: @paradero.nombre_p
    fill_in "Tipo P", with: @paradero.tipo_p
    fill_in "Ubicacion P", with: @paradero.ubicacion_p
    click_on "Update Paradero"

    assert_text "Paradero was successfully updated"
    click_on "Back"
  end

  test "destroying a Paradero" do
    visit paraderos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Paradero was successfully destroyed"
  end
end
