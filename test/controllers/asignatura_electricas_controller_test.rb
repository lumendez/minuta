require 'test_helper'

class AsignaturaElectricasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @asignatura_electrica = asignatura_electricas(:one)
  end

  test "should get index" do
    get asignatura_electricas_url
    assert_response :success
  end

  test "should get new" do
    get new_asignatura_electrica_url
    assert_response :success
  end

  test "should create asignatura_electrica" do
    assert_difference('AsignaturaElectrica.count') do
      post asignatura_electricas_url, params: { asignatura_electrica: { nombre: @asignatura_electrica.nombre } }
    end

    assert_redirected_to asignatura_electrica_url(AsignaturaElectrica.last)
  end

  test "should show asignatura_electrica" do
    get asignatura_electrica_url(@asignatura_electrica)
    assert_response :success
  end

  test "should get edit" do
    get edit_asignatura_electrica_url(@asignatura_electrica)
    assert_response :success
  end

  test "should update asignatura_electrica" do
    patch asignatura_electrica_url(@asignatura_electrica), params: { asignatura_electrica: { nombre: @asignatura_electrica.nombre } }
    assert_redirected_to asignatura_electrica_url(@asignatura_electrica)
  end

  test "should destroy asignatura_electrica" do
    assert_difference('AsignaturaElectrica.count', -1) do
      delete asignatura_electrica_url(@asignatura_electrica)
    end

    assert_redirected_to asignatura_electricas_url
  end
end
