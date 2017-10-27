require 'test_helper'

class RevocacionRegistrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @revocacion_registro = revocacion_registros(:one)
  end

  test "should get index" do
    get revocacion_registros_url
    assert_response :success
  end

  test "should get new" do
    get new_revocacion_registro_url
    assert_response :success
  end

  test "should create revocacion_registro" do
    assert_difference('RevocacionRegistro.count') do
      post revocacion_registros_url, params: { revocacion_registro: { director: @revocacion_registro.director, estado: @revocacion_registro.estado, titulo: @revocacion_registro.titulo, user_id: @revocacion_registro.user_id, valida_consejero: @revocacion_registro.valida_consejero, valida_coordinador: @revocacion_registro.valida_coordinador } }
    end

    assert_redirected_to revocacion_registro_url(RevocacionRegistro.last)
  end

  test "should show revocacion_registro" do
    get revocacion_registro_url(@revocacion_registro)
    assert_response :success
  end

  test "should get edit" do
    get edit_revocacion_registro_url(@revocacion_registro)
    assert_response :success
  end

  test "should update revocacion_registro" do
    patch revocacion_registro_url(@revocacion_registro), params: { revocacion_registro: { director: @revocacion_registro.director, estado: @revocacion_registro.estado, titulo: @revocacion_registro.titulo, user_id: @revocacion_registro.user_id, valida_consejero: @revocacion_registro.valida_consejero, valida_coordinador: @revocacion_registro.valida_coordinador } }
    assert_redirected_to revocacion_registro_url(@revocacion_registro)
  end

  test "should destroy revocacion_registro" do
    assert_difference('RevocacionRegistro.count', -1) do
      delete revocacion_registro_url(@revocacion_registro)
    end

    assert_redirected_to revocacion_registros_url
  end
end
