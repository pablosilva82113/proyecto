require "test_helper"

class ActividadesAlumnosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @actividades_alumno = actividades_alumnos(:one)
  end

  test "should get index" do
    get actividades_alumnos_url
    assert_response :success
  end

  test "should get new" do
    get new_actividades_alumno_url
    assert_response :success
  end

  test "should create actividades_alumno" do
    assert_difference("ActividadesAlumno.count") do
      post actividades_alumnos_url, params: { actividades_alumno: { actividad_id: @actividades_alumno.actividad_id, alumno_id: @actividades_alumno.alumno_id, calificacion: @actividades_alumno.calificacion, observaciones: @actividades_alumno.observaciones } }
    end

    assert_redirected_to actividades_alumno_url(ActividadesAlumno.last)
  end

  test "should show actividades_alumno" do
    get actividades_alumno_url(@actividades_alumno)
    assert_response :success
  end

  test "should get edit" do
    get edit_actividades_alumno_url(@actividades_alumno)
    assert_response :success
  end

  test "should update actividades_alumno" do
    patch actividades_alumno_url(@actividades_alumno), params: { actividades_alumno: { actividad_id: @actividades_alumno.actividad_id, alumno_id: @actividades_alumno.alumno_id, calificacion: @actividades_alumno.calificacion, observaciones: @actividades_alumno.observaciones } }
    assert_redirected_to actividades_alumno_url(@actividades_alumno)
  end

  test "should destroy actividades_alumno" do
    assert_difference("ActividadesAlumno.count", -1) do
      delete actividades_alumno_url(@actividades_alumno)
    end

    assert_redirected_to actividades_alumnos_url
  end
end
