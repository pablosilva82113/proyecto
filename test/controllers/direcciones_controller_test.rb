require "test_helper"

class DireccionesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @direccion = direcciones(:one)
  end

  test "should get index" do
    get direcciones_url
    assert_response :success
  end

  test "should get new" do
    get new_direccion_url
    assert_response :success
  end

  test "should create direccion" do
    assert_difference("Direccion.count") do
      post direcciones_url, params: { direccion: { calle: @direccion.calle, codigo_postal: @direccion.codigo_postal, colonia: @direccion.colonia, estado: @direccion.estado, municipio: @direccion.municipio, numero_exterior: @direccion.numero_exterior, numero_interior: @direccion.numero_interior, referencia: @direccion.referencia } }
    end

    assert_redirected_to direccion_url(Direccion.last)
  end

  test "should show direccion" do
    get direccion_url(@direccion)
    assert_response :success
  end

  test "should get edit" do
    get edit_direccion_url(@direccion)
    assert_response :success
  end

  test "should update direccion" do
    patch direccion_url(@direccion), params: { direccion: { calle: @direccion.calle, codigo_postal: @direccion.codigo_postal, colonia: @direccion.colonia, estado: @direccion.estado, municipio: @direccion.municipio, numero_exterior: @direccion.numero_exterior, numero_interior: @direccion.numero_interior, referencia: @direccion.referencia } }
    assert_redirected_to direccion_url(@direccion)
  end

  test "should destroy direccion" do
    assert_difference("Direccion.count", -1) do
      delete direccion_url(@direccion)
    end

    assert_redirected_to direcciones_url
  end
end
