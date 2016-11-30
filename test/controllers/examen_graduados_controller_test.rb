require 'test_helper'

class ExamenGraduadosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @examen_graduado = examen_graduados(:one)
  end

  test "should get index" do
    get examen_graduados_url
    assert_response :success
  end

  test "should get new" do
    get new_examen_graduado_url
    assert_response :success
  end

  test "should create examen_graduado" do
    assert_difference('ExamenGraduado.count') do
      post examen_graduados_url, params: { examen_graduado: { tipo: @examen_graduado.tipo } }
    end

    assert_redirected_to examen_graduado_url(ExamenGraduado.last)
  end

  test "should show examen_graduado" do
    get examen_graduado_url(@examen_graduado)
    assert_response :success
  end

  test "should get edit" do
    get edit_examen_graduado_url(@examen_graduado)
    assert_response :success
  end

  test "should update examen_graduado" do
    patch examen_graduado_url(@examen_graduado), params: { examen_graduado: { tipo: @examen_graduado.tipo } }
    assert_redirected_to examen_graduado_url(@examen_graduado)
  end

  test "should destroy examen_graduado" do
    assert_difference('ExamenGraduado.count', -1) do
      delete examen_graduado_url(@examen_graduado)
    end

    assert_redirected_to examen_graduados_url
  end
end
