require 'test_helper'

class ConsejeroElectricasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @consejero_electrica = consejero_electricas(:one)
  end

  test "should get index" do
    get consejero_electricas_url
    assert_response :success
  end

  test "should get new" do
    get new_consejero_electrica_url
    assert_response :success
  end

  test "should create consejero_electrica" do
    assert_difference('ConsejeroElectrica.count') do
      post consejero_electricas_url, params: { consejero_electrica: { nombre: @consejero_electrica.nombre } }
    end

    assert_redirected_to consejero_electrica_url(ConsejeroElectrica.last)
  end

  test "should show consejero_electrica" do
    get consejero_electrica_url(@consejero_electrica)
    assert_response :success
  end

  test "should get edit" do
    get edit_consejero_electrica_url(@consejero_electrica)
    assert_response :success
  end

  test "should update consejero_electrica" do
    patch consejero_electrica_url(@consejero_electrica), params: { consejero_electrica: { nombre: @consejero_electrica.nombre } }
    assert_redirected_to consejero_electrica_url(@consejero_electrica)
  end

  test "should destroy consejero_electrica" do
    assert_difference('ConsejeroElectrica.count', -1) do
      delete consejero_electrica_url(@consejero_electrica)
    end

    assert_redirected_to consejero_electricas_url
  end
end
