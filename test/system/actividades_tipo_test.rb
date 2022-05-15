require "application_system_test_case"

class ActividadTiposTest < ApplicationSystemTestCase
  setup do
    @actividad_tipo = actividades_tipo(:one)
  end

  test "visiting the index" do
    visit actividades_tipo_url
    assert_selector "h1", text: "Actividad tipos"
  end

  test "should create actividad tipo" do
    visit actividades_tipo_url
    click_on "New actividad tipo"

    fill_in "Tipo", with: @actividad_tipo.tipo
    click_on "Create Actividad tipo"

    assert_text "Actividad tipo was successfully created"
    click_on "Back"
  end

  test "should update Actividad tipo" do
    visit actividad_tipo_url(@actividad_tipo)
    click_on "Edit this actividad tipo", match: :first

    fill_in "Tipo", with: @actividad_tipo.tipo
    click_on "Update Actividad tipo"

    assert_text "Actividad tipo was successfully updated"
    click_on "Back"
  end

  test "should destroy Actividad tipo" do
    visit actividad_tipo_url(@actividad_tipo)
    click_on "Destroy this actividad tipo", match: :first

    assert_text "Actividad tipo was successfully destroyed"
  end
end
