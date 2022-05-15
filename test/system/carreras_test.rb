require "application_system_test_case"

class CarrerasTest < ApplicationSystemTestCase
  setup do
    @carrera = carreras(:one)
  end

  test "visiting the index" do
    visit carreras_url
    assert_selector "h1", text: "Carreras"
  end

  test "should create carrera" do
    visit carreras_url
    click_on "New carrera"

    fill_in "Carrera", with: @carrera.carrera
    fill_in "Siglas", with: @carrera.siglas
    click_on "Create Carrera"

    assert_text "Carrera was successfully created"
    click_on "Back"
  end

  test "should update Carrera" do
    visit carrera_url(@carrera)
    click_on "Edit this carrera", match: :first

    fill_in "Carrera", with: @carrera.carrera
    fill_in "Siglas", with: @carrera.siglas
    click_on "Update Carrera"

    assert_text "Carrera was successfully updated"
    click_on "Back"
  end

  test "should destroy Carrera" do
    visit carrera_url(@carrera)
    click_on "Destroy this carrera", match: :first

    assert_text "Carrera was successfully destroyed"
  end
end
