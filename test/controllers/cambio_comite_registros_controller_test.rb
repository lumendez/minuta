require 'test_helper'

class CambioComiteRegistrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cambio_comite_registro = cambio_comite_registros(:one)
  end

  test "should get index" do
    get cambio_comite_registros_url
    assert_response :success
  end

  test "should get new" do
    get new_cambio_comite_registro_url
    assert_response :success
  end

  test "should create cambio_comite_registro" do
    assert_difference('CambioComiteRegistro.count') do
      post cambio_comite_registros_url, params: { cambio_comite_registro: { estado: @cambio_comite_registro.estado, tutor_cuatro: @cambio_comite_registro.tutor_cuatro, tutor_dos: @cambio_comite_registro.tutor_dos, tutor_tres: @cambio_comite_registro.tutor_tres, tutor_uno: @cambio_comite_registro.tutor_uno, user_id: @cambio_comite_registro.user_id, valida_consejero: @cambio_comite_registro.valida_consejero, valida_coordinador: @cambio_comite_registro.valida_coordinador } }
    end

    assert_redirected_to cambio_comite_registro_url(CambioComiteRegistro.last)
  end

  test "should show cambio_comite_registro" do
    get cambio_comite_registro_url(@cambio_comite_registro)
    assert_response :success
  end

  test "should get edit" do
    get edit_cambio_comite_registro_url(@cambio_comite_registro)
    assert_response :success
  end

  test "should update cambio_comite_registro" do
    patch cambio_comite_registro_url(@cambio_comite_registro), params: { cambio_comite_registro: { estado: @cambio_comite_registro.estado, tutor_cuatro: @cambio_comite_registro.tutor_cuatro, tutor_dos: @cambio_comite_registro.tutor_dos, tutor_tres: @cambio_comite_registro.tutor_tres, tutor_uno: @cambio_comite_registro.tutor_uno, user_id: @cambio_comite_registro.user_id, valida_consejero: @cambio_comite_registro.valida_consejero, valida_coordinador: @cambio_comite_registro.valida_coordinador } }
    assert_redirected_to cambio_comite_registro_url(@cambio_comite_registro)
  end

  test "should destroy cambio_comite_registro" do
    assert_difference('CambioComiteRegistro.count', -1) do
      delete cambio_comite_registro_url(@cambio_comite_registro)
    end

    assert_redirected_to cambio_comite_registros_url
  end
end
