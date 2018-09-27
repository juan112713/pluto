require "application_system_test_case"

class ConductorsTest < ApplicationSystemTestCase
  setup do
    @conductor = conductors(:one)
  end

  test "visiting the index" do
    visit conductors_url
    assert_selector "h1", text: "Conductors"
  end

  test "creating a Conductor" do
    visit conductors_url
    click_on "New Conductor"

    fill_in "Apellido", with: @conductor.apellido
    fill_in "Estado", with: @conductor.estado
    fill_in "Nombre", with: @conductor.nombre
    fill_in "Num Doc Identidad", with: @conductor.num_doc_identidad
    fill_in "Tipo Doc Identidad", with: @conductor.tipo_doc_identidad
    click_on "Create Conductor"

    assert_text "Conductor was successfully created"
    click_on "Back"
  end

  test "updating a Conductor" do
    visit conductors_url
    click_on "Edit", match: :first

    fill_in "Apellido", with: @conductor.apellido
    fill_in "Estado", with: @conductor.estado
    fill_in "Nombre", with: @conductor.nombre
    fill_in "Num Doc Identidad", with: @conductor.num_doc_identidad
    fill_in "Tipo Doc Identidad", with: @conductor.tipo_doc_identidad
    click_on "Update Conductor"

    assert_text "Conductor was successfully updated"
    click_on "Back"
  end

  test "destroying a Conductor" do
    visit conductors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Conductor was successfully destroyed"
  end
end
