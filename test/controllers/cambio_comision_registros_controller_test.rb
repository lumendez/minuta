require 'test_helper'

class CambioComisionRegistrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cambio_comision_registro = cambio_comision_registros(:one)
  end

  test "should get index" do
    get cambio_comision_registros_url
    assert_response :success
  end

  test "should get new" do
    get new_cambio_comision_registro_url
    assert_response :success
  end

  test "should create cambio_comision_registro" do
    assert_difference('CambioComisionRegistro.count') do
      post cambio_comision_registros_url, params: { cambio_comision_registro: { estado: @cambio_comision_registro.estado, presidente: @cambio_comision_registro.presidente, primer_vocal: @cambio_comision_registro.primer_vocal, secretario: @cambio_comision_registro.secretario, segundo_vocal: @cambio_comision_registro.segundo_vocal, suplente: @cambio_comision_registro.suplente, tercer_vocal: @cambio_comision_registro.tercer_vocal, valida_consejero: @cambio_comision_registro.valida_consejero, valida_coordinador: @cambio_comision_registro.valida_coordinador } }
    end

    assert_redirected_to cambio_comision_registro_url(CambioComisionRegistro.last)
  end

  test "should show cambio_comision_registro" do
    get cambio_comision_registro_url(@cambio_comision_registro)
    assert_response :success
  end

  test "should get edit" do
    get edit_cambio_comision_registro_url(@cambio_comision_registro)
    assert_response :success
  end

  test "should update cambio_comision_registro" do
    patch cambio_comision_registro_url(@cambio_comision_registro), params: { cambio_comision_registro: { estado: @cambio_comision_registro.estado, presidente: @cambio_comision_registro.presidente, primer_vocal: @cambio_comision_registro.primer_vocal, secretario: @cambio_comision_registro.secretario, segundo_vocal: @cambio_comision_registro.segundo_vocal, suplente: @cambio_comision_registro.suplente, tercer_vocal: @cambio_comision_registro.tercer_vocal, valida_consejero: @cambio_comision_registro.valida_consejero, valida_coordinador: @cambio_comision_registro.valida_coordinador } }
    assert_redirected_to cambio_comision_registro_url(@cambio_comision_registro)
  end

  test "should destroy cambio_comision_registro" do
    assert_difference('CambioComisionRegistro.count', -1) do
      delete cambio_comision_registro_url(@cambio_comision_registro)
    end

    assert_redirected_to cambio_comision_registros_url
  end
end
