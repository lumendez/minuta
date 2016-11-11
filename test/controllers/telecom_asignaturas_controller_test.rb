require 'test_helper'

class TelecomAsignaturasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @telecom_asignatura = telecom_asignaturas(:one)
  end

  test "should get index" do
    get telecom_asignaturas_url
    assert_response :success
  end

  test "should get new" do
    get new_telecom_asignatura_url
    assert_response :success
  end

  test "should create telecom_asignatura" do
    assert_difference('TelecomAsignatura.count') do
      post telecom_asignaturas_url, params: { telecom_asignatura: { clave: @telecom_asignatura.clave, nombre: @telecom_asignatura.nombre } }
    end

    assert_redirected_to telecom_asignatura_url(TelecomAsignatura.last)
  end

  test "should show telecom_asignatura" do
    get telecom_asignatura_url(@telecom_asignatura)
    assert_response :success
  end

  test "should get edit" do
    get edit_telecom_asignatura_url(@telecom_asignatura)
    assert_response :success
  end

  test "should update telecom_asignatura" do
    patch telecom_asignatura_url(@telecom_asignatura), params: { telecom_asignatura: { clave: @telecom_asignatura.clave, nombre: @telecom_asignatura.nombre } }
    assert_redirected_to telecom_asignatura_url(@telecom_asignatura)
  end

  test "should destroy telecom_asignatura" do
    assert_difference('TelecomAsignatura.count', -1) do
      delete telecom_asignatura_url(@telecom_asignatura)
    end

    assert_redirected_to telecom_asignaturas_url
  end
end
