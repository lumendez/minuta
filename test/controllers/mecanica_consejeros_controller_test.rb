require 'test_helper'

class MecanicaConsejerosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mecanica_consejero = mecanica_consejeros(:one)
  end

  test "should get index" do
    get mecanica_consejeros_url
    assert_response :success
  end

  test "should get new" do
    get new_mecanica_consejero_url
    assert_response :success
  end

  test "should create mecanica_consejero" do
    assert_difference('MecanicaConsejero.count') do
      post mecanica_consejeros_url, params: { mecanica_consejero: { nombre: @mecanica_consejero.nombre } }
    end

    assert_redirected_to mecanica_consejero_url(MecanicaConsejero.last)
  end

  test "should show mecanica_consejero" do
    get mecanica_consejero_url(@mecanica_consejero)
    assert_response :success
  end

  test "should get edit" do
    get edit_mecanica_consejero_url(@mecanica_consejero)
    assert_response :success
  end

  test "should update mecanica_consejero" do
    patch mecanica_consejero_url(@mecanica_consejero), params: { mecanica_consejero: { nombre: @mecanica_consejero.nombre } }
    assert_redirected_to mecanica_consejero_url(@mecanica_consejero)
  end

  test "should destroy mecanica_consejero" do
    assert_difference('MecanicaConsejero.count', -1) do
      delete mecanica_consejero_url(@mecanica_consejero)
    end

    assert_redirected_to mecanica_consejeros_url
  end
end
