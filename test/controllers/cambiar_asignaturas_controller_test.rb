require 'test_helper'

class CambiarAsignaturasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cambiar_asignatura = cambiar_asignaturas(:one)
  end

  test "should get index" do
    get cambiar_asignaturas_url
    assert_response :success
  end

  test "should get new" do
    get new_cambiar_asignatura_url
    assert_response :success
  end

  test "should create cambiar_asignatura" do
    assert_difference('CambiarAsignatura.count') do
      post cambiar_asignaturas_url, params: { cambiar_asignatura: { actual: @cambiar_asignatura.actual, anterior: @cambiar_asignatura.anterior } }
    end

    assert_redirected_to cambiar_asignatura_url(CambiarAsignatura.last)
  end

  test "should show cambiar_asignatura" do
    get cambiar_asignatura_url(@cambiar_asignatura)
    assert_response :success
  end

  test "should get edit" do
    get edit_cambiar_asignatura_url(@cambiar_asignatura)
    assert_response :success
  end

  test "should update cambiar_asignatura" do
    patch cambiar_asignatura_url(@cambiar_asignatura), params: { cambiar_asignatura: { actual: @cambiar_asignatura.actual, anterior: @cambiar_asignatura.anterior } }
    assert_redirected_to cambiar_asignatura_url(@cambiar_asignatura)
  end

  test "should destroy cambiar_asignatura" do
    assert_difference('CambiarAsignatura.count', -1) do
      delete cambiar_asignatura_url(@cambiar_asignatura)
    end

    assert_redirected_to cambiar_asignaturas_url
  end
end
