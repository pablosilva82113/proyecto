require "application_system_test_case"

class AlumnosTest < ApplicationSystemTestCase
  setup do
    @alumno = alumnos(:one)
  end

  test "visiting the index" do
    visit alumnos_url
    assert_selector "h1", text: "Alumnos"
  end

  test "should create alumno" do
    visit alumnos_url
    click_on "New alumno"

    fill_in "Apellido m", with: @alumno.apellido_m
    fill_in "Apellido p", with: @alumno.apellido_p
    fill_in "Carrera", with: @alumno.carrera_id
    fill_in "No control", with: @alumno.no_control
    fill_in "Nombre", with: @alumno.nombre
    fill_in "Semestre", with: @alumno.semestre
    fill_in "User", with: @alumno.user_id
    click_on "Create Alumno"

    assert_text "Alumno was successfully created"
    click_on "Back"
  end

  test "should update Alumno" do
    visit alumno_url(@alumno)
    click_on "Edit this alumno", match: :first

    fill_in "Apellido m", with: @alumno.apellido_m
    fill_in "Apellido p", with: @alumno.apellido_p
    fill_in "Carrera", with: @alumno.carrera_id
    fill_in "No control", with: @alumno.no_control
    fill_in "Nombre", with: @alumno.nombre
    fill_in "Semestre", with: @alumno.semestre
    fill_in "User", with: @alumno.user_id
    click_on "Update Alumno"

    assert_text "Alumno was successfully updated"
    click_on "Back"
  end

  test "should destroy Alumno" do
    visit alumno_url(@alumno)
    click_on "Destroy this alumno", match: :first

    assert_text "Alumno was successfully destroyed"
  end
end
