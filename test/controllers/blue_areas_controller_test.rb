require 'test_helper'

class BlueAreasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blue_area = blue_areas(:one)
  end

  test "should get index" do
    get blue_areas_url
    assert_response :success
  end

  test "should get new" do
    get new_blue_area_url
    assert_response :success
  end

  test "should create blue_area" do
    assert_difference('BlueArea.count') do
      post blue_areas_url, params: { blue_area: {  } }
    end

    assert_redirected_to blue_area_url(BlueArea.last)
  end

  test "should show blue_area" do
    get blue_area_url(@blue_area)
    assert_response :success
  end

  test "should get edit" do
    get edit_blue_area_url(@blue_area)
    assert_response :success
  end

  test "should update blue_area" do
    patch blue_area_url(@blue_area), params: { blue_area: {  } }
    assert_redirected_to blue_area_url(@blue_area)
  end

  test "should destroy blue_area" do
    assert_difference('BlueArea.count', -1) do
      delete blue_area_url(@blue_area)
    end

    assert_redirected_to blue_areas_url
  end
end
