require 'test_helper'

class BajaAsignaturasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @baja_asignatura = baja_asignaturas(:one)
  end

  test "should get index" do
    get baja_asignaturas_url
    assert_response :success
  end

  test "should get new" do
    get new_baja_asignatura_url
    assert_response :success
  end

  test "should create baja_asignatura" do
    assert_difference('BajaAsignatura.count') do
      post baja_asignaturas_url, params: { baja_asignatura: { nombre: @baja_asignatura.nombre } }
    end

    assert_redirected_to baja_asignatura_url(BajaAsignatura.last)
  end

  test "should show baja_asignatura" do
    get baja_asignatura_url(@baja_asignatura)
    assert_response :success
  end

  test "should get edit" do
    get edit_baja_asignatura_url(@baja_asignatura)
    assert_response :success
  end

  test "should update baja_asignatura" do
    patch baja_asignatura_url(@baja_asignatura), params: { baja_asignatura: { nombre: @baja_asignatura.nombre } }
    assert_redirected_to baja_asignatura_url(@baja_asignatura)
  end

  test "should destroy baja_asignatura" do
    assert_difference('BajaAsignatura.count', -1) do
      delete baja_asignatura_url(@baja_asignatura)
    end

    assert_redirected_to baja_asignaturas_url
  end
end
