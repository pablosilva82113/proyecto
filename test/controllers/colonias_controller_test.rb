require "test_helper"

class ColoniasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @colonia = colonias(:one)
  end

  test "should get index" do
    get colonias_url
    assert_response :success
  end

  test "should get new" do
    get new_colonia_url
    assert_response :success
  end

  test "should create colonia" do
    assert_difference("Colonia.count") do
      post colonias_url, params: { colonia: { nombre_c: @colonia.nombre_c } }
    end

    assert_redirected_to colonia_url(Colonia.last)
  end

  test "should show colonia" do
    get colonia_url(@colonia)
    assert_response :success
  end

  test "should get edit" do
    get edit_colonia_url(@colonia)
    assert_response :success
  end

  test "should update colonia" do
    patch colonia_url(@colonia), params: { colonia: { nombre_c: @colonia.nombre_c } }
    assert_redirected_to colonia_url(@colonia)
  end

  test "should destroy colonia" do
    assert_difference("Colonia.count", -1) do
      delete colonia_url(@colonia)
    end

    assert_redirected_to colonias_url
  end
end
