require "application_system_test_case"

class DireccionesTiposTest < ApplicationSystemTestCase
  setup do
    @direcciones_tipo = direcciones_tipos(:one)
  end

  test "visiting the index" do
    visit direcciones_tipos_url
    assert_selector "h1", text: "Direcciones tipos"
  end

  test "should create direcciones tipo" do
    visit direcciones_tipos_url
    click_on "New direcciones tipo"

    fill_in "Tipo", with: @direcciones_tipo.tipo
    click_on "Create Direcciones tipo"

    assert_text "Direcciones tipo was successfully created"
    click_on "Back"
  end

  test "should update Direcciones tipo" do
    visit direcciones_tipo_url(@direcciones_tipo)
    click_on "Edit this direcciones tipo", match: :first

    fill_in "Tipo", with: @direcciones_tipo.tipo
    click_on "Update Direcciones tipo"

    assert_text "Direcciones tipo was successfully updated"
    click_on "Back"
  end

  test "should destroy Direcciones tipo" do
    visit direcciones_tipo_url(@direcciones_tipo)
    click_on "Destroy this direcciones tipo", match: :first

    assert_text "Direcciones tipo was successfully destroyed"
  end
end
