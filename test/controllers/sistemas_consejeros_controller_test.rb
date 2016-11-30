require 'test_helper'

class SistemasConsejerosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sistemas_consejero = sistemas_consejeros(:one)
  end

  test "should get index" do
    get sistemas_consejeros_url
    assert_response :success
  end

  test "should get new" do
    get new_sistemas_consejero_url
    assert_response :success
  end

  test "should create sistemas_consejero" do
    assert_difference('SistemasConsejero.count') do
      post sistemas_consejeros_url, params: { sistemas_consejero: { nombre: @sistemas_consejero.nombre } }
    end

    assert_redirected_to sistemas_consejero_url(SistemasConsejero.last)
  end

  test "should show sistemas_consejero" do
    get sistemas_consejero_url(@sistemas_consejero)
    assert_response :success
  end

  test "should get edit" do
    get edit_sistemas_consejero_url(@sistemas_consejero)
    assert_response :success
  end

  test "should update sistemas_consejero" do
    patch sistemas_consejero_url(@sistemas_consejero), params: { sistemas_consejero: { nombre: @sistemas_consejero.nombre } }
    assert_redirected_to sistemas_consejero_url(@sistemas_consejero)
  end

  test "should destroy sistemas_consejero" do
    assert_difference('SistemasConsejero.count', -1) do
      delete sistemas_consejero_url(@sistemas_consejero)
    end

    assert_redirected_to sistemas_consejeros_url
  end
end
