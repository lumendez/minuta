require 'test_helper'

class SepiProgramasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sepi_programa = sepi_programas(:one)
  end

  test "should get index" do
    get sepi_programas_url
    assert_response :success
  end

  test "should get new" do
    get new_sepi_programa_url
    assert_response :success
  end

  test "should create sepi_programa" do
    assert_difference('SepiPrograma.count') do
      post sepi_programas_url, params: { sepi_programa: { nombre: @sepi_programa.nombre } }
    end

    assert_redirected_to sepi_programa_url(SepiPrograma.last)
  end

  test "should show sepi_programa" do
    get sepi_programa_url(@sepi_programa)
    assert_response :success
  end

  test "should get edit" do
    get edit_sepi_programa_url(@sepi_programa)
    assert_response :success
  end

  test "should update sepi_programa" do
    patch sepi_programa_url(@sepi_programa), params: { sepi_programa: { nombre: @sepi_programa.nombre } }
    assert_redirected_to sepi_programa_url(@sepi_programa)
  end

  test "should destroy sepi_programa" do
    assert_difference('SepiPrograma.count', -1) do
      delete sepi_programa_url(@sepi_programa)
    end

    assert_redirected_to sepi_programas_url
  end
end
