require 'test_helper'

class ElectronicaAsignaturasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @electronica_asignatura = electronica_asignaturas(:one)
  end

  test "should get index" do
    get electronica_asignaturas_url
    assert_response :success
  end

  test "should get new" do
    get new_electronica_asignatura_url
    assert_response :success
  end

  test "should create electronica_asignatura" do
    assert_difference('ElectronicaAsignatura.count') do
      post electronica_asignaturas_url, params: { electronica_asignatura: { clave: @electronica_asignatura.clave, nombre: @electronica_asignatura.nombre } }
    end

    assert_redirected_to electronica_asignatura_url(ElectronicaAsignatura.last)
  end

  test "should show electronica_asignatura" do
    get electronica_asignatura_url(@electronica_asignatura)
    assert_response :success
  end

  test "should get edit" do
    get edit_electronica_asignatura_url(@electronica_asignatura)
    assert_response :success
  end

  test "should update electronica_asignatura" do
    patch electronica_asignatura_url(@electronica_asignatura), params: { electronica_asignatura: { clave: @electronica_asignatura.clave, nombre: @electronica_asignatura.nombre } }
    assert_redirected_to electronica_asignatura_url(@electronica_asignatura)
  end

  test "should destroy electronica_asignatura" do
    assert_difference('ElectronicaAsignatura.count', -1) do
      delete electronica_asignatura_url(@electronica_asignatura)
    end

    assert_redirected_to electronica_asignaturas_url
  end
end
