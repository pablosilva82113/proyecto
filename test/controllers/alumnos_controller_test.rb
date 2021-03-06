require "test_helper"

class AlumnosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @alumno = alumnos(:one)
  end

  test "should get index" do
    get alumnos_url
    assert_response :success
  end

  test "should get new" do
    get new_alumno_url
    assert_response :success
  end

  test "should create alumno" do
    assert_difference("Alumno.count") do
      post alumnos_url, params: { alumno: { apellido_m: @alumno.apellido_m, apellido_p: @alumno.apellido_p, carrera_id: @alumno.carrera_id, no_control: @alumno.no_control, nombre: @alumno.nombre, semestre: @alumno.semestre, user_id: @alumno.user_id } }
    end

    assert_redirected_to alumno_url(Alumno.last)
  end

  test "should show alumno" do
    get alumno_url(@alumno)
    assert_response :success
  end

  test "should get edit" do
    get edit_alumno_url(@alumno)
    assert_response :success
  end

  test "should update alumno" do
    patch alumno_url(@alumno), params: { alumno: { apellido_m: @alumno.apellido_m, apellido_p: @alumno.apellido_p, carrera_id: @alumno.carrera_id, no_control: @alumno.no_control, nombre: @alumno.nombre, semestre: @alumno.semestre, user_id: @alumno.user_id } }
    assert_redirected_to alumno_url(@alumno)
  end

  test "should destroy alumno" do
    assert_difference("Alumno.count", -1) do
      delete alumno_url(@alumno)
    end

    assert_redirected_to alumnos_url
  end
end
