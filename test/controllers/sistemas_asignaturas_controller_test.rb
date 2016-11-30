require 'test_helper'

class SistemasAsignaturasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sistemas_asignatura = sistemas_asignaturas(:one)
  end

  test "should get index" do
    get sistemas_asignaturas_url
    assert_response :success
  end

  test "should get new" do
    get new_sistemas_asignatura_url
    assert_response :success
  end

  test "should create sistemas_asignatura" do
    assert_difference('SistemasAsignatura.count') do
      post sistemas_asignaturas_url, params: { sistemas_asignatura: { clave: @sistemas_asignatura.clave, nombre: @sistemas_asignatura.nombre } }
    end

    assert_redirected_to sistemas_asignatura_url(SistemasAsignatura.last)
  end

  test "should show sistemas_asignatura" do
    get sistemas_asignatura_url(@sistemas_asignatura)
    assert_response :success
  end

  test "should get edit" do
    get edit_sistemas_asignatura_url(@sistemas_asignatura)
    assert_response :success
  end

  test "should update sistemas_asignatura" do
    patch sistemas_asignatura_url(@sistemas_asignatura), params: { sistemas_asignatura: { clave: @sistemas_asignatura.clave, nombre: @sistemas_asignatura.nombre } }
    assert_redirected_to sistemas_asignatura_url(@sistemas_asignatura)
  end

  test "should destroy sistemas_asignatura" do
    assert_difference('SistemasAsignatura.count', -1) do
      delete sistemas_asignatura_url(@sistemas_asignatura)
    end

    assert_redirected_to sistemas_asignaturas_url
  end
end
