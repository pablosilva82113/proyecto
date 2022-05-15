require "application_system_test_case"

class ActividadesAlumnosTest < ApplicationSystemTestCase
  setup do
    @actividades_alumno = actividades_alumnos(:one)
  end

  test "visiting the index" do
    visit actividades_alumnos_url
    assert_selector "h1", text: "Actividades alumnos"
  end

  test "should create actividades alumno" do
    visit actividades_alumnos_url
    click_on "New actividades alumno"

    fill_in "Actividad", with: @actividades_alumno.actividad_id
    fill_in "Alumno", with: @actividades_alumno.alumno_id
    fill_in "Calificacion", with: @actividades_alumno.calificacion
    fill_in "Observaciones", with: @actividades_alumno.observaciones
    click_on "Create Actividades alumno"

    assert_text "Actividades alumno was successfully created"
    click_on "Back"
  end

  test "should update Actividades alumno" do
    visit actividades_alumno_url(@actividades_alumno)
    click_on "Edit this actividades alumno", match: :first

    fill_in "Actividad", with: @actividades_alumno.actividad_id
    fill_in "Alumno", with: @actividades_alumno.alumno_id
    fill_in "Calificacion", with: @actividades_alumno.calificacion
    fill_in "Observaciones", with: @actividades_alumno.observaciones
    click_on "Update Actividades alumno"

    assert_text "Actividades alumno was successfully updated"
    click_on "Back"
  end

  test "should destroy Actividades alumno" do
    visit actividades_alumno_url(@actividades_alumno)
    click_on "Destroy this actividades alumno", match: :first

    assert_text "Actividades alumno was successfully destroyed"
  end
end
