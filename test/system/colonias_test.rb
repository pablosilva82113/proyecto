require "application_system_test_case"

class ColoniasTest < ApplicationSystemTestCase
  setup do
    @colonia = colonias(:one)
  end

  test "visiting the index" do
    visit colonias_url
    assert_selector "h1", text: "Colonias"
  end

  test "should create colonia" do
    visit colonias_url
    click_on "New colonia"

    fill_in "Nombre c", with: @colonia.nombre_c
    click_on "Create Colonia"

    assert_text "Colonia was successfully created"
    click_on "Back"
  end

  test "should update Colonia" do
    visit colonia_url(@colonia)
    click_on "Edit this colonia", match: :first

    fill_in "Nombre c", with: @colonia.nombre_c
    click_on "Update Colonia"

    assert_text "Colonia was successfully updated"
    click_on "Back"
  end

  test "should destroy Colonia" do
    visit colonia_url(@colonia)
    click_on "Destroy this colonia", match: :first

    assert_text "Colonia was successfully destroyed"
  end
end
