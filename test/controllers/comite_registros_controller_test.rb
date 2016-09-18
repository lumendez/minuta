require 'test_helper'

class ComiteRegistrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comite_registro = comite_registros(:one)
  end

  test "should get index" do
    get comite_registros_url
    assert_response :success
  end

  test "should get new" do
    get new_comite_registro_url
    assert_response :success
  end

  test "should create comite_registro" do
    assert_difference('ComiteRegistro.count') do
      post comite_registros_url, params: { comite_registro: { tutor_cuatro: @comite_registro.tutor_cuatro, tutor_dos: @comite_registro.tutor_dos, tutor_tres: @comite_registro.tutor_tres, tutor_uno: @comite_registro.tutor_uno } }
    end

    assert_redirected_to comite_registro_url(ComiteRegistro.last)
  end

  test "should show comite_registro" do
    get comite_registro_url(@comite_registro)
    assert_response :success
  end

  test "should get edit" do
    get edit_comite_registro_url(@comite_registro)
    assert_response :success
  end

  test "should update comite_registro" do
    patch comite_registro_url(@comite_registro), params: { comite_registro: { tutor_cuatro: @comite_registro.tutor_cuatro, tutor_dos: @comite_registro.tutor_dos, tutor_tres: @comite_registro.tutor_tres, tutor_uno: @comite_registro.tutor_uno } }
    assert_redirected_to comite_registro_url(@comite_registro)
  end

  test "should destroy comite_registro" do
    assert_difference('ComiteRegistro.count', -1) do
      delete comite_registro_url(@comite_registro)
    end

    assert_redirected_to comite_registros_url
  end
end
