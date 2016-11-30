require 'test_helper'

class MecanicaAsignaturasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mecanica_asignatura = mecanica_asignaturas(:one)
  end

  test "should get index" do
    get mecanica_asignaturas_url
    assert_response :success
  end

  test "should get new" do
    get new_mecanica_asignatura_url
    assert_response :success
  end

  test "should create mecanica_asignatura" do
    assert_difference('MecanicaAsignatura.count') do
      post mecanica_asignaturas_url, params: { mecanica_asignatura: { clave: @mecanica_asignatura.clave, nombre: @mecanica_asignatura.nombre } }
    end

    assert_redirected_to mecanica_asignatura_url(MecanicaAsignatura.last)
  end

  test "should show mecanica_asignatura" do
    get mecanica_asignatura_url(@mecanica_asignatura)
    assert_response :success
  end

  test "should get edit" do
    get edit_mecanica_asignatura_url(@mecanica_asignatura)
    assert_response :success
  end

  test "should update mecanica_asignatura" do
    patch mecanica_asignatura_url(@mecanica_asignatura), params: { mecanica_asignatura: { clave: @mecanica_asignatura.clave, nombre: @mecanica_asignatura.nombre } }
    assert_redirected_to mecanica_asignatura_url(@mecanica_asignatura)
  end

  test "should destroy mecanica_asignatura" do
    assert_difference('MecanicaAsignatura.count', -1) do
      delete mecanica_asignatura_url(@mecanica_asignatura)
    end

    assert_redirected_to mecanica_asignaturas_url
  end
end
