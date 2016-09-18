require 'test_helper'

class ClaveSemestresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @clave_semestre = clave_semestres(:one)
  end

  test "should get index" do
    get clave_semestres_url
    assert_response :success
  end

  test "should get new" do
    get new_clave_semestre_url
    assert_response :success
  end

  test "should create clave_semestre" do
    assert_difference('ClaveSemestre.count') do
      post clave_semestres_url, params: { clave_semestre: { semestre: @clave_semestre.semestre } }
    end

    assert_redirected_to clave_semestre_url(ClaveSemestre.last)
  end

  test "should show clave_semestre" do
    get clave_semestre_url(@clave_semestre)
    assert_response :success
  end

  test "should get edit" do
    get edit_clave_semestre_url(@clave_semestre)
    assert_response :success
  end

  test "should update clave_semestre" do
    patch clave_semestre_url(@clave_semestre), params: { clave_semestre: { semestre: @clave_semestre.semestre } }
    assert_redirected_to clave_semestre_url(@clave_semestre)
  end

  test "should destroy clave_semestre" do
    assert_difference('ClaveSemestre.count', -1) do
      delete clave_semestre_url(@clave_semestre)
    end

    assert_redirected_to clave_semestres_url
  end
end
