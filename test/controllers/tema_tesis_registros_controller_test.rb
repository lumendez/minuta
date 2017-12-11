require 'test_helper'

class TemaTesisRegistrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tema_tesis_registro = tema_tesis_registros(:one)
  end

  test "should get index" do
    get tema_tesis_registros_url
    assert_response :success
  end

  test "should get new" do
    get new_tema_tesis_registro_url
    assert_response :success
  end

  test "should create tema_tesis_registro" do
    assert_difference('TemaTesisRegistro.count') do
      post tema_tesis_registros_url, params: { tema_tesis_registro: { tema: @tema_tesis_registro.tema } }
    end

    assert_redirected_to tema_tesis_registro_url(TemaTesisRegistro.last)
  end

  test "should show tema_tesis_registro" do
    get tema_tesis_registro_url(@tema_tesis_registro)
    assert_response :success
  end

  test "should get edit" do
    get edit_tema_tesis_registro_url(@tema_tesis_registro)
    assert_response :success
  end

  test "should update tema_tesis_registro" do
    patch tema_tesis_registro_url(@tema_tesis_registro), params: { tema_tesis_registro: { tema: @tema_tesis_registro.tema } }
    assert_redirected_to tema_tesis_registro_url(@tema_tesis_registro)
  end

  test "should destroy tema_tesis_registro" do
    assert_difference('TemaTesisRegistro.count', -1) do
      delete tema_tesis_registro_url(@tema_tesis_registro)
    end

    assert_redirected_to tema_tesis_registros_url
  end
end
