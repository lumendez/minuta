require 'test_helper'

class ElectronicaConsejerosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @electronica_consejero = electronica_consejeros(:one)
  end

  test "should get index" do
    get electronica_consejeros_url
    assert_response :success
  end

  test "should get new" do
    get new_electronica_consejero_url
    assert_response :success
  end

  test "should create electronica_consejero" do
    assert_difference('ElectronicaConsejero.count') do
      post electronica_consejeros_url, params: { electronica_consejero: { nombre: @electronica_consejero.nombre } }
    end

    assert_redirected_to electronica_consejero_url(ElectronicaConsejero.last)
  end

  test "should show electronica_consejero" do
    get electronica_consejero_url(@electronica_consejero)
    assert_response :success
  end

  test "should get edit" do
    get edit_electronica_consejero_url(@electronica_consejero)
    assert_response :success
  end

  test "should update electronica_consejero" do
    patch electronica_consejero_url(@electronica_consejero), params: { electronica_consejero: { nombre: @electronica_consejero.nombre } }
    assert_redirected_to electronica_consejero_url(@electronica_consejero)
  end

  test "should destroy electronica_consejero" do
    assert_difference('ElectronicaConsejero.count', -1) do
      delete electronica_consejero_url(@electronica_consejero)
    end

    assert_redirected_to electronica_consejeros_url
  end
end
