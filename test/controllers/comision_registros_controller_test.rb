require 'test_helper'

class ComisionRegistrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comision_registro = comision_registros(:one)
  end

  test "should get index" do
    get comision_registros_url
    assert_response :success
  end

  test "should get new" do
    get new_comision_registro_url
    assert_response :success
  end

  test "should create comision_registro" do
    assert_difference('ComisionRegistro.count') do
      post comision_registros_url, params: { comision_registro: { estado: @comision_registro.estado, presidente: @comision_registro.presidente, primer_vocal: @comision_registro.primer_vocal, secretario: @comision_registro.secretario, segundo_vocal: @comision_registro.segundo_vocal, suplente: @comision_registro.suplente, tercer_vocal: @comision_registro.tercer_vocal, valida_consejero: @comision_registro.valida_consejero, valida_coordinador: @comision_registro.valida_coordinador } }
    end

    assert_redirected_to comision_registro_url(ComisionRegistro.last)
  end

  test "should show comision_registro" do
    get comision_registro_url(@comision_registro)
    assert_response :success
  end

  test "should get edit" do
    get edit_comision_registro_url(@comision_registro)
    assert_response :success
  end

  test "should update comision_registro" do
    patch comision_registro_url(@comision_registro), params: { comision_registro: { estado: @comision_registro.estado, presidente: @comision_registro.presidente, primer_vocal: @comision_registro.primer_vocal, secretario: @comision_registro.secretario, segundo_vocal: @comision_registro.segundo_vocal, suplente: @comision_registro.suplente, tercer_vocal: @comision_registro.tercer_vocal, valida_consejero: @comision_registro.valida_consejero, valida_coordinador: @comision_registro.valida_coordinador } }
    assert_redirected_to comision_registro_url(@comision_registro)
  end

  test "should destroy comision_registro" do
    assert_difference('ComisionRegistro.count', -1) do
      delete comision_registro_url(@comision_registro)
    end

    assert_redirected_to comision_registros_url
  end
end
