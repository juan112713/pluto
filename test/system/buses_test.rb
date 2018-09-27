require "application_system_test_case"

class BusesTest < ApplicationSystemTestCase
  setup do
    @bus = buses(:one)
  end

  test "visiting the index" do
    visit buses_url
    assert_selector "h1", text: "Buses"
  end

  test "creating a Bus" do
    visit buses_url
    click_on "New Bus"

    fill_in "Cantidad Sillas", with: @bus.cantidad_sillas
    fill_in "Estado", with: @bus.estado
    fill_in "Movil", with: @bus.movil
    fill_in "Total Pasajeros", with: @bus.total_pasajeros
    click_on "Create Bus"

    assert_text "Bus was successfully created"
    click_on "Back"
  end

  test "updating a Bus" do
    visit buses_url
    click_on "Edit", match: :first

    fill_in "Cantidad Sillas", with: @bus.cantidad_sillas
    fill_in "Estado", with: @bus.estado
    fill_in "Movil", with: @bus.movil
    fill_in "Total Pasajeros", with: @bus.total_pasajeros
    click_on "Update Bus"

    assert_text "Bus was successfully updated"
    click_on "Back"
  end

  test "destroying a Bus" do
    visit buses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bus was successfully destroyed"
  end
end
