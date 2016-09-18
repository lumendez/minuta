require 'test_helper'

class CambiarTemasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cambiar_tema = cambiar_temas(:one)
  end

  test "should get index" do
    get cambiar_temas_url
    assert_response :success
  end

  test "should get new" do
    get new_cambiar_tema_url
    assert_response :success
  end

  test "should create cambiar_tema" do
    assert_difference('CambiarTema.count') do
      post cambiar_temas_url, params: { cambiar_tema: { actual: @cambiar_tema.actual, anterior: @cambiar_tema.anterior } }
    end

    assert_redirected_to cambiar_tema_url(CambiarTema.last)
  end

  test "should show cambiar_tema" do
    get cambiar_tema_url(@cambiar_tema)
    assert_response :success
  end

  test "should get edit" do
    get edit_cambiar_tema_url(@cambiar_tema)
    assert_response :success
  end

  test "should update cambiar_tema" do
    patch cambiar_tema_url(@cambiar_tema), params: { cambiar_tema: { actual: @cambiar_tema.actual, anterior: @cambiar_tema.anterior } }
    assert_redirected_to cambiar_tema_url(@cambiar_tema)
  end

  test "should destroy cambiar_tema" do
    assert_difference('CambiarTema.count', -1) do
      delete cambiar_tema_url(@cambiar_tema)
    end

    assert_redirected_to cambiar_temas_url
  end
end
