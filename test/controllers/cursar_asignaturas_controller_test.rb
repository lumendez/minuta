require 'test_helper'

class CursarAsignaturasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cursar_asignatura = cursar_asignaturas(:one)
  end

  test "should get index" do
    get cursar_asignaturas_url
    assert_response :success
  end

  test "should get new" do
    get new_cursar_asignatura_url
    assert_response :success
  end

  test "should create cursar_asignatura" do
    assert_difference('CursarAsignatura.count') do
      post cursar_asignaturas_url, params: { cursar_asignatura: { clave: @cursar_asignatura.clave, nombre: @cursar_asignatura.nombre, unidad: @cursar_asignatura.unidad } }
    end

    assert_redirected_to cursar_asignatura_url(CursarAsignatura.last)
  end

  test "should show cursar_asignatura" do
    get cursar_asignatura_url(@cursar_asignatura)
    assert_response :success
  end

  test "should get edit" do
    get edit_cursar_asignatura_url(@cursar_asignatura)
    assert_response :success
  end

  test "should update cursar_asignatura" do
    patch cursar_asignatura_url(@cursar_asignatura), params: { cursar_asignatura: { clave: @cursar_asignatura.clave, nombre: @cursar_asignatura.nombre, unidad: @cursar_asignatura.unidad } }
    assert_redirected_to cursar_asignatura_url(@cursar_asignatura)
  end

  test "should destroy cursar_asignatura" do
    assert_difference('CursarAsignatura.count', -1) do
      delete cursar_asignatura_url(@cursar_asignatura)
    end

    assert_redirected_to cursar_asignaturas_url
  end
end
