require "application_system_test_case"

class DireccionesTest < ApplicationSystemTestCase
  setup do
    @direccion = direcciones(:one)
  end

  test "visiting the index" do
    visit direcciones_url
    assert_selector "h1", text: "Direcciones"
  end

  test "should create direccion" do
    visit direcciones_url
    click_on "New direccion"

    fill_in "Calle", with: @direccion.calle
    fill_in "Codigo postal", with: @direccion.codigo_postal
    fill_in "Colonia", with: @direccion.colonia
    fill_in "Estado", with: @direccion.estado
    fill_in "Municipio", with: @direccion.municipio
    fill_in "Numero exterior", with: @direccion.numero_exterior
    fill_in "Numero interior", with: @direccion.numero_interior
    fill_in "Referencia", with: @direccion.referencia
    click_on "Create Direccion"

    assert_text "Direccion was successfully created"
    click_on "Back"
  end

  test "should update Direccion" do
    visit direccion_url(@direccion)
    click_on "Edit this direccion", match: :first

    fill_in "Calle", with: @direccion.calle
    fill_in "Codigo postal", with: @direccion.codigo_postal
    fill_in "Colonia", with: @direccion.colonia
    fill_in "Estado", with: @direccion.estado
    fill_in "Municipio", with: @direccion.municipio
    fill_in "Numero exterior", with: @direccion.numero_exterior
    fill_in "Numero interior", with: @direccion.numero_interior
    fill_in "Referencia", with: @direccion.referencia
    click_on "Update Direccion"

    assert_text "Direccion was successfully updated"
    click_on "Back"
  end

  test "should destroy Direccion" do
    visit direccion_url(@direccion)
    click_on "Destroy this direccion", match: :first

    assert_text "Direccion was successfully destroyed"
  end
end
