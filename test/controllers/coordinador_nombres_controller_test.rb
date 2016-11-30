require 'test_helper'

class CoordinadorNombresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coordinador_nombre = coordinador_nombres(:one)
  end

  test "should get index" do
    get coordinador_nombres_url
    assert_response :success
  end

  test "should get new" do
    get new_coordinador_nombre_url
    assert_response :success
  end

  test "should create coordinador_nombre" do
    assert_difference('CoordinadorNombre.count') do
      post coordinador_nombres_url, params: { coordinador_nombre: { nombre: @coordinador_nombre.nombre } }
    end

    assert_redirected_to coordinador_nombre_url(CoordinadorNombre.last)
  end

  test "should show coordinador_nombre" do
    get coordinador_nombre_url(@coordinador_nombre)
    assert_response :success
  end

  test "should get edit" do
    get edit_coordinador_nombre_url(@coordinador_nombre)
    assert_response :success
  end

  test "should update coordinador_nombre" do
    patch coordinador_nombre_url(@coordinador_nombre), params: { coordinador_nombre: { nombre: @coordinador_nombre.nombre } }
    assert_redirected_to coordinador_nombre_url(@coordinador_nombre)
  end

  test "should destroy coordinador_nombre" do
    assert_difference('CoordinadorNombre.count', -1) do
      delete coordinador_nombre_url(@coordinador_nombre)
    end

    assert_redirected_to coordinador_nombres_url
  end
end
