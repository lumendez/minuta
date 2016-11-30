require 'test_helper'

class ConsejerosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @consejero = consejeros(:one)
  end

  test "should get index" do
    get consejeros_url
    assert_response :success
  end

  test "should get new" do
    get new_consejero_url
    assert_response :success
  end

  test "should create consejero" do
    assert_difference('Consejero.count') do
      post consejeros_url, params: { consejero: { nombre: @consejero.nombre } }
    end

    assert_redirected_to consejero_url(Consejero.last)
  end

  test "should show consejero" do
    get consejero_url(@consejero)
    assert_response :success
  end

  test "should get edit" do
    get edit_consejero_url(@consejero)
    assert_response :success
  end

  test "should update consejero" do
    patch consejero_url(@consejero), params: { consejero: { nombre: @consejero.nombre } }
    assert_redirected_to consejero_url(@consejero)
  end

  test "should destroy consejero" do
    assert_difference('Consejero.count', -1) do
      delete consejero_url(@consejero)
    end

    assert_redirected_to consejeros_url
  end
end
