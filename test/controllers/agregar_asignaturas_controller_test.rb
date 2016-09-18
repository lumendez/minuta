require 'test_helper'

class AgregarAsignaturasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @agregar_asignatura = agregar_asignaturas(:one)
  end

  test "should get index" do
    get agregar_asignaturas_url
    assert_response :success
  end

  test "should get new" do
    get new_agregar_asignatura_url
    assert_response :success
  end

  test "should create agregar_asignatura" do
    assert_difference('AgregarAsignatura.count') do
      post agregar_asignaturas_url, params: { agregar_asignatura: { nombre: @agregar_asignatura.nombre } }
    end

    assert_redirected_to agregar_asignatura_url(AgregarAsignatura.last)
  end

  test "should show agregar_asignatura" do
    get agregar_asignatura_url(@agregar_asignatura)
    assert_response :success
  end

  test "should get edit" do
    get edit_agregar_asignatura_url(@agregar_asignatura)
    assert_response :success
  end

  test "should update agregar_asignatura" do
    patch agregar_asignatura_url(@agregar_asignatura), params: { agregar_asignatura: { nombre: @agregar_asignatura.nombre } }
    assert_redirected_to agregar_asignatura_url(@agregar_asignatura)
  end

  test "should destroy agregar_asignatura" do
    assert_difference('AgregarAsignatura.count', -1) do
      delete agregar_asignatura_url(@agregar_asignatura)
    end

    assert_redirected_to agregar_asignaturas_url
  end
end
