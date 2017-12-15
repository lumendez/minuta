require 'test_helper'

class CambioDirectorTesisRegistrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cambio_director_tesis_registro = cambio_director_tesis_registros(:one)
  end

  test "should get index" do
    get cambio_director_tesis_registros_url
    assert_response :success
  end

  test "should get new" do
    get new_cambio_director_tesis_registro_url
    assert_response :success
  end

  test "should create cambio_director_tesis_registro" do
    assert_difference('CambioDirectorTesisRegistro.count') do
      post cambio_director_tesis_registros_url, params: { cambio_director_tesis_registro: { codirector: @cambio_director_tesis_registro.codirector, estado: @cambio_director_tesis_registro.estado, nombre: @cambio_director_tesis_registro.nombre, user_id: @cambio_director_tesis_registro.user_id, valida_consejero: @cambio_director_tesis_registro.valida_consejero, valida_coordinador: @cambio_director_tesis_registro.valida_coordinador } }
    end

    assert_redirected_to cambio_director_tesis_registro_url(CambioDirectorTesisRegistro.last)
  end

  test "should show cambio_director_tesis_registro" do
    get cambio_director_tesis_registro_url(@cambio_director_tesis_registro)
    assert_response :success
  end

  test "should get edit" do
    get edit_cambio_director_tesis_registro_url(@cambio_director_tesis_registro)
    assert_response :success
  end

  test "should update cambio_director_tesis_registro" do
    patch cambio_director_tesis_registro_url(@cambio_director_tesis_registro), params: { cambio_director_tesis_registro: { codirector: @cambio_director_tesis_registro.codirector, estado: @cambio_director_tesis_registro.estado, nombre: @cambio_director_tesis_registro.nombre, user_id: @cambio_director_tesis_registro.user_id, valida_consejero: @cambio_director_tesis_registro.valida_consejero, valida_coordinador: @cambio_director_tesis_registro.valida_coordinador } }
    assert_redirected_to cambio_director_tesis_registro_url(@cambio_director_tesis_registro)
  end

  test "should destroy cambio_director_tesis_registro" do
    assert_difference('CambioDirectorTesisRegistro.count', -1) do
      delete cambio_director_tesis_registro_url(@cambio_director_tesis_registro)
    end

    assert_redirected_to cambio_director_tesis_registros_url
  end
end
