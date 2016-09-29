require 'test_helper'

class ElectricaConsejerosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @electrica_consejero = electrica_consejeros(:one)
  end

  test "should get index" do
    get electrica_consejeros_url
    assert_response :success
  end

  test "should get new" do
    get new_electrica_consejero_url
    assert_response :success
  end

  test "should create electrica_consejero" do
    assert_difference('ElectricaConsejero.count') do
      post electrica_consejeros_url, params: { electrica_consejero: { nombre: @electrica_consejero.nombre } }
    end

    assert_redirected_to electrica_consejero_url(ElectricaConsejero.last)
  end

  test "should show electrica_consejero" do
    get electrica_consejero_url(@electrica_consejero)
    assert_response :success
  end

  test "should get edit" do
    get edit_electrica_consejero_url(@electrica_consejero)
    assert_response :success
  end

  test "should update electrica_consejero" do
    patch electrica_consejero_url(@electrica_consejero), params: { electrica_consejero: { nombre: @electrica_consejero.nombre } }
    assert_redirected_to electrica_consejero_url(@electrica_consejero)
  end

  test "should destroy electrica_consejero" do
    assert_difference('ElectricaConsejero.count', -1) do
      delete electrica_consejero_url(@electrica_consejero)
    end

    assert_redirected_to electrica_consejeros_url
  end
end
