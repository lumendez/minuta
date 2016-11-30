require 'test_helper'

class TesisRegistrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tesis_registro = tesis_registros(:one)
  end

  test "should get index" do
    get tesis_registros_url
    assert_response :success
  end

  test "should get new" do
    get new_tesis_registro_url
    assert_response :success
  end

  test "should create tesis_registro" do
    assert_difference('TesisRegistro.count') do
      post tesis_registros_url, params: { tesis_registro: { director: @tesis_registro.director, presidente: @tesis_registro.presidente, primer_vocal: @tesis_registro.primer_vocal, secretario: @tesis_registro.secretario, segundo_vocal: @tesis_registro.segundo_vocal, suplente: @tesis_registro.suplente, tema: @tesis_registro.tema, tercer_vocal: @tesis_registro.tercer_vocal } }
    end

    assert_redirected_to tesis_registro_url(TesisRegistro.last)
  end

  test "should show tesis_registro" do
    get tesis_registro_url(@tesis_registro)
    assert_response :success
  end

  test "should get edit" do
    get edit_tesis_registro_url(@tesis_registro)
    assert_response :success
  end

  test "should update tesis_registro" do
    patch tesis_registro_url(@tesis_registro), params: { tesis_registro: { director: @tesis_registro.director, presidente: @tesis_registro.presidente, primer_vocal: @tesis_registro.primer_vocal, secretario: @tesis_registro.secretario, segundo_vocal: @tesis_registro.segundo_vocal, suplente: @tesis_registro.suplente, tema: @tesis_registro.tema, tercer_vocal: @tesis_registro.tercer_vocal } }
    assert_redirected_to tesis_registro_url(@tesis_registro)
  end

  test "should destroy tesis_registro" do
    assert_difference('TesisRegistro.count', -1) do
      delete tesis_registro_url(@tesis_registro)
    end

    assert_redirected_to tesis_registros_url
  end
end
