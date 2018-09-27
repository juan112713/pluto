require "application_system_test_case"

class RutaTest < ApplicationSystemTestCase
  setup do
    @rutum = ruta(:one)
  end

  test "visiting the index" do
    visit ruta_url
    assert_selector "h1", text: "Ruta"
  end

  test "creating a Rutum" do
    visit ruta_url
    click_on "New Rutum"

    fill_in "Estado", with: @rutum.estado
    fill_in "Nombre Ruta", with: @rutum.nombre_ruta
    click_on "Create Rutum"

    assert_text "Rutum was successfully created"
    click_on "Back"
  end

  test "updating a Rutum" do
    visit ruta_url
    click_on "Edit", match: :first

    fill_in "Estado", with: @rutum.estado
    fill_in "Nombre Ruta", with: @rutum.nombre_ruta
    click_on "Update Rutum"

    assert_text "Rutum was successfully updated"
    click_on "Back"
  end

  test "destroying a Rutum" do
    visit ruta_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rutum was successfully destroyed"
  end
end
