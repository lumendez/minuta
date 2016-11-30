require 'test_helper'

class CambiarConsejerosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cambiar_consejero = cambiar_consejeros(:one)
  end

  test "should get index" do
    get cambiar_consejeros_url
    assert_response :success
  end

  test "should get new" do
    get new_cambiar_consejero_url
    assert_response :success
  end

  test "should create cambiar_consejero" do
    assert_difference('CambiarConsejero.count') do
      post cambiar_consejeros_url, params: { cambiar_consejero: { actual: @cambiar_consejero.actual, anterior: @cambiar_consejero.anterior } }
    end

    assert_redirected_to cambiar_consejero_url(CambiarConsejero.last)
  end

  test "should show cambiar_consejero" do
    get cambiar_consejero_url(@cambiar_consejero)
    assert_response :success
  end

  test "should get edit" do
    get edit_cambiar_consejero_url(@cambiar_consejero)
    assert_response :success
  end

  test "should update cambiar_consejero" do
    patch cambiar_consejero_url(@cambiar_consejero), params: { cambiar_consejero: { actual: @cambiar_consejero.actual, anterior: @cambiar_consejero.anterior } }
    assert_redirected_to cambiar_consejero_url(@cambiar_consejero)
  end

  test "should destroy cambiar_consejero" do
    assert_difference('CambiarConsejero.count', -1) do
      delete cambiar_consejero_url(@cambiar_consejero)
    end

    assert_redirected_to cambiar_consejeros_url
  end
end
