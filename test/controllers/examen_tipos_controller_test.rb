require 'test_helper'

class ExamenTiposControllerTest < ActionDispatch::IntegrationTest
  setup do
    @examen_tipo = examen_tipos(:one)
  end

  test "should get index" do
    get examen_tipos_url
    assert_response :success
  end

  test "should get new" do
    get new_examen_tipo_url
    assert_response :success
  end

  test "should create examen_tipo" do
    assert_difference('ExamenTipo.count') do
      post examen_tipos_url, params: { examen_tipo: { tipo: @examen_tipo.tipo } }
    end

    assert_redirected_to examen_tipo_url(ExamenTipo.last)
  end

  test "should show examen_tipo" do
    get examen_tipo_url(@examen_tipo)
    assert_response :success
  end

  test "should get edit" do
    get edit_examen_tipo_url(@examen_tipo)
    assert_response :success
  end

  test "should update examen_tipo" do
    patch examen_tipo_url(@examen_tipo), params: { examen_tipo: { tipo: @examen_tipo.tipo } }
    assert_redirected_to examen_tipo_url(@examen_tipo)
  end

  test "should destroy examen_tipo" do
    assert_difference('ExamenTipo.count', -1) do
      delete examen_tipo_url(@examen_tipo)
    end

    assert_redirected_to examen_tipos_url
  end
end
