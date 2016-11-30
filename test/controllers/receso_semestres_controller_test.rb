require 'test_helper'

class RecesoSemestresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @receso_semestre = receso_semestres(:one)
  end

  test "should get index" do
    get receso_semestres_url
    assert_response :success
  end

  test "should get new" do
    get new_receso_semestre_url
    assert_response :success
  end

  test "should create receso_semestre" do
    assert_difference('RecesoSemestre.count') do
      post receso_semestres_url, params: { receso_semestre: { semestre: @receso_semestre.semestre } }
    end

    assert_redirected_to receso_semestre_url(RecesoSemestre.last)
  end

  test "should show receso_semestre" do
    get receso_semestre_url(@receso_semestre)
    assert_response :success
  end

  test "should get edit" do
    get edit_receso_semestre_url(@receso_semestre)
    assert_response :success
  end

  test "should update receso_semestre" do
    patch receso_semestre_url(@receso_semestre), params: { receso_semestre: { semestre: @receso_semestre.semestre } }
    assert_redirected_to receso_semestre_url(@receso_semestre)
  end

  test "should destroy receso_semestre" do
    assert_difference('RecesoSemestre.count', -1) do
      delete receso_semestre_url(@receso_semestre)
    end

    assert_redirected_to receso_semestres_url
  end
end
