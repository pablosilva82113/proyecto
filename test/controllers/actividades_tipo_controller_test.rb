require "test_helper"

class ActividadesTipoControllerTest < ActionDispatch::IntegrationTest
  setup do
    @actividad_tipo = actividades_tipo(:one)
  end

  test "should get index" do
    get actividades_tipo_url
    assert_response :success
  end

  test "should get new" do
    get new_actividad_tipo_url
    assert_response :success
  end

  test "should create actividad_tipo" do
    assert_difference("ActividadTipo.count") do
      post actividades_tipo_url, params: { actividad_tipo: { tipo: @actividad_tipo.tipo } }
    end

    assert_redirected_to actividad_tipo_url(ActividadTipo.last)
  end

  test "should show actividad_tipo" do
    get actividad_tipo_url(@actividad_tipo)
    assert_response :success
  end

  test "should get edit" do
    get edit_actividad_tipo_url(@actividad_tipo)
    assert_response :success
  end

  test "should update actividad_tipo" do
    patch actividad_tipo_url(@actividad_tipo), params: { actividad_tipo: { tipo: @actividad_tipo.tipo } }
    assert_redirected_to actividad_tipo_url(@actividad_tipo)
  end

  test "should destroy actividad_tipo" do
    assert_difference("ActividadTipo.count", -1) do
      delete actividad_tipo_url(@actividad_tipo)
    end

    assert_redirected_to actividades_tipo_url
  end
end
