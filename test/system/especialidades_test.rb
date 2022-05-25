require "application_system_test_case"

class EspecialidadesTest < ApplicationSystemTestCase
  setup do
    @especialidad = especialidades(:one)
  end

  test "visiting the index" do
    visit especialidades_url
    assert_selector "h1", text: "Especialidades"
  end

  test "should create especialidad" do
    visit especialidades_url
    click_on "New especialidad"

    fill_in "Nombre especialidad", with: @especialidad.nombre_especialidad
    click_on "Create Especialidad"

    assert_text "Especialidad was successfully created"
    click_on "Back"
  end

  test "should update Especialidad" do
    visit especialidad_url(@especialidad)
    click_on "Edit this especialidad", match: :first

    fill_in "Nombre especialidad", with: @especialidad.nombre_especialidad
    click_on "Update Especialidad"

    assert_text "Especialidad was successfully updated"
    click_on "Back"
  end

  test "should destroy Especialidad" do
    visit especialidad_url(@especialidad)
    click_on "Destroy this especialidad", match: :first

    assert_text "Especialidad was successfully destroyed"
  end
end
