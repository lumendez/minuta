require 'test_helper'

class TelecomConsejerosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @telecom_consejero = telecom_consejeros(:one)
  end

  test "should get index" do
    get telecom_consejeros_url
    assert_response :success
  end

  test "should get new" do
    get new_telecom_consejero_url
    assert_response :success
  end

  test "should create telecom_consejero" do
    assert_difference('TelecomConsejero.count') do
      post telecom_consejeros_url, params: { telecom_consejero: { nombre: @telecom_consejero.nombre } }
    end

    assert_redirected_to telecom_consejero_url(TelecomConsejero.last)
  end

  test "should show telecom_consejero" do
    get telecom_consejero_url(@telecom_consejero)
    assert_response :success
  end

  test "should get edit" do
    get edit_telecom_consejero_url(@telecom_consejero)
    assert_response :success
  end

  test "should update telecom_consejero" do
    patch telecom_consejero_url(@telecom_consejero), params: { telecom_consejero: { nombre: @telecom_consejero.nombre } }
    assert_redirected_to telecom_consejero_url(@telecom_consejero)
  end

  test "should destroy telecom_consejero" do
    assert_difference('TelecomConsejero.count', -1) do
      delete telecom_consejero_url(@telecom_consejero)
    end

    assert_redirected_to telecom_consejeros_url
  end
end
