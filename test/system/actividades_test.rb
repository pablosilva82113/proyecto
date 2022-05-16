require "application_system_test_case"

class ActividadesTest < ApplicationSystemTestCase
  setup do
    @actividad = actividades(:one)
  end

  test "visiting the index" do
    visit actividades_url
    assert_selector "h1", text: "Actividades"
  end

  test "should create actividad" do
    visit actividades_url
    click_on "New actividad"

    fill_in "Descripcion", with: @actividad.descripcion
    fill_in "Docente", with: @actividad.docente_id
    fill_in "Tipo", with: @actividad.tipo_id
    fill_in "Titulo", with: @actividad.titulo
    click_on "Create Actividad"

    assert_text "Actividad was successfully created"
    click_on "Back"
  end

  test "should update Actividad" do
    visit actividad_url(@actividad)
    click_on "Edit this actividad", match: :first

    fill_in "Descripcion", with: @actividad.descripcion
    fill_in "Docente", with: @actividad.docente_id
    fill_in "Tipo", with: @actividad.tipo_id
    fill_in "Titulo", with: @actividad.titulo
    click_on "Update Actividad"

    assert_text "Actividad was successfully updated"
    click_on "Back"
  end

  test "should destroy Actividad" do
    visit actividad_url(@actividad)
    click_on "Destroy this actividad", match: :first

    assert_text "Actividad was successfully destroyed"
  end
end
