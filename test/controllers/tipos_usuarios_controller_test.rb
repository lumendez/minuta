require 'test_helper'

class TiposUsuariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipos_usuario = tipos_usuarios(:one)
  end

  test "should get index" do
    get tipos_usuarios_url
    assert_response :success
  end

  test "should get new" do
    get new_tipos_usuario_url
    assert_response :success
  end

  test "should create tipos_usuario" do
    assert_difference('TiposUsuario.count') do
      post tipos_usuarios_url, params: { tipos_usuario: { tipo: @tipos_usuario.tipo } }
    end

    assert_redirected_to tipos_usuario_url(TiposUsuario.last)
  end

  test "should show tipos_usuario" do
    get tipos_usuario_url(@tipos_usuario)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipos_usuario_url(@tipos_usuario)
    assert_response :success
  end

  test "should update tipos_usuario" do
    patch tipos_usuario_url(@tipos_usuario), params: { tipos_usuario: { tipo: @tipos_usuario.tipo } }
    assert_redirected_to tipos_usuario_url(@tipos_usuario)
  end

  test "should destroy tipos_usuario" do
    assert_difference('TiposUsuario.count', -1) do
      delete tipos_usuario_url(@tipos_usuario)
    end

    assert_redirected_to tipos_usuarios_url
  end
end
