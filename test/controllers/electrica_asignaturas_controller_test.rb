require 'test_helper'

class ElectricaAsignaturasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @electrica_asignatura = electrica_asignaturas(:one)
  end

  test "should get index" do
    get electrica_asignaturas_url
    assert_response :success
  end

  test "should get new" do
    get new_electrica_asignatura_url
    assert_response :success
  end

  test "should create electrica_asignatura" do
    assert_difference('ElectricaAsignatura.count') do
      post electrica_asignaturas_url, params: { electrica_asignatura: { nombre: @electrica_asignatura.nombre } }
    end

    assert_redirected_to electrica_asignatura_url(ElectricaAsignatura.last)
  end

  test "should show electrica_asignatura" do
    get electrica_asignatura_url(@electrica_asignatura)
    assert_response :success
  end

  test "should get edit" do
    get edit_electrica_asignatura_url(@electrica_asignatura)
    assert_response :success
  end

  test "should update electrica_asignatura" do
    patch electrica_asignatura_url(@electrica_asignatura), params: { electrica_asignatura: { nombre: @electrica_asignatura.nombre } }
    assert_redirected_to electrica_asignatura_url(@electrica_asignatura)
  end

  test "should destroy electrica_asignatura" do
    assert_difference('ElectricaAsignatura.count', -1) do
      delete electrica_asignatura_url(@electrica_asignatura)
    end

    assert_redirected_to electrica_asignaturas_url
  end
end
