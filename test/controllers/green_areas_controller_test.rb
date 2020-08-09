require 'test_helper'

class GreenAreasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @green_area = green_areas(:one)
  end

  test "should get index" do
    get green_areas_url
    assert_response :success
  end

  test "should get new" do
    get new_green_area_url
    assert_response :success
  end

  test "should create green_area" do
    assert_difference('GreenArea.count') do
      post green_areas_url, params: { green_area: {  } }
    end

    assert_redirected_to green_area_url(GreenArea.last)
  end

  test "should show green_area" do
    get green_area_url(@green_area)
    assert_response :success
  end

  test "should get edit" do
    get edit_green_area_url(@green_area)
    assert_response :success
  end

  test "should update green_area" do
    patch green_area_url(@green_area), params: { green_area: {  } }
    assert_redirected_to green_area_url(@green_area)
  end

  test "should destroy green_area" do
    assert_difference('GreenArea.count', -1) do
      delete green_area_url(@green_area)
    end

    assert_redirected_to green_areas_url
  end
end
