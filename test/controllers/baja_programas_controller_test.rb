require 'test_helper'

class BajaProgramasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @baja_programa = baja_programas(:one)
  end

  test "should get index" do
    get baja_programas_url
    assert_response :success
  end

  test "should get new" do
    get new_baja_programa_url
    assert_response :success
  end

  test "should create baja_programa" do
    assert_difference('BajaPrograma.count') do
      post baja_programas_url, params: { baja_programa: { nombre: @baja_programa.nombre } }
    end

    assert_redirected_to baja_programa_url(BajaPrograma.last)
  end

  test "should show baja_programa" do
    get baja_programa_url(@baja_programa)
    assert_response :success
  end

  test "should get edit" do
    get edit_baja_programa_url(@baja_programa)
    assert_response :success
  end

  test "should update baja_programa" do
    patch baja_programa_url(@baja_programa), params: { baja_programa: { nombre: @baja_programa.nombre } }
    assert_redirected_to baja_programa_url(@baja_programa)
  end

  test "should destroy baja_programa" do
    assert_difference('BajaPrograma.count', -1) do
      delete baja_programa_url(@baja_programa)
    end

    assert_redirected_to baja_programas_url
  end
end
