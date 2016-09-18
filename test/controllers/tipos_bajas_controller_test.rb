require 'test_helper'

class TiposBajasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipos_baja = tipos_bajas(:one)
  end

  test "should get index" do
    get tipos_bajas_url
    assert_response :success
  end

  test "should get new" do
    get new_tipos_baja_url
    assert_response :success
  end

  test "should create tipos_baja" do
    assert_difference('TiposBaja.count') do
      post tipos_bajas_url, params: { tipos_baja: { tipo: @tipos_baja.tipo } }
    end

    assert_redirected_to tipos_baja_url(TiposBaja.last)
  end

  test "should show tipos_baja" do
    get tipos_baja_url(@tipos_baja)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipos_baja_url(@tipos_baja)
    assert_response :success
  end

  test "should update tipos_baja" do
    patch tipos_baja_url(@tipos_baja), params: { tipos_baja: { tipo: @tipos_baja.tipo } }
    assert_redirected_to tipos_baja_url(@tipos_baja)
  end

  test "should destroy tipos_baja" do
    assert_difference('TiposBaja.count', -1) do
      delete tipos_baja_url(@tipos_baja)
    end

    assert_redirected_to tipos_bajas_url
  end
end
