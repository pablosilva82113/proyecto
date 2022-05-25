require "test_helper"

class DireccionesTiposControllerTest < ActionDispatch::IntegrationTest
  setup do
    @direcciones_tipo = direcciones_tipos(:one)
  end

  test "should get index" do
    get direcciones_tipos_url
    assert_response :success
  end

  test "should get new" do
    get new_direcciones_tipo_url
    assert_response :success
  end

  test "should create direcciones_tipo" do
    assert_difference("DireccionesTipo.count") do
      post direcciones_tipos_url, params: { direcciones_tipo: { tipo: @direcciones_tipo.tipo } }
    end

    assert_redirected_to direcciones_tipo_url(DireccionesTipo.last)
  end

  test "should show direcciones_tipo" do
    get direcciones_tipo_url(@direcciones_tipo)
    assert_response :success
  end

  test "should get edit" do
    get edit_direcciones_tipo_url(@direcciones_tipo)
    assert_response :success
  end

  test "should update direcciones_tipo" do
    patch direcciones_tipo_url(@direcciones_tipo), params: { direcciones_tipo: { tipo: @direcciones_tipo.tipo } }
    assert_redirected_to direcciones_tipo_url(@direcciones_tipo)
  end

  test "should destroy direcciones_tipo" do
    assert_difference("DireccionesTipo.count", -1) do
      delete direcciones_tipo_url(@direcciones_tipo)
    end

    assert_redirected_to direcciones_tipos_url
  end
end
