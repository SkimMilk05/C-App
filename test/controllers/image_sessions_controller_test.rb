require 'test_helper'

class ImageSessionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @image_session = image_sessions(:one)
  end

  test "should get index" do
    get image_sessions_url
    assert_response :success
  end

  test "should get new" do
    get new_image_session_url
    assert_response :success
  end

  test "should create image_session" do
    assert_difference('ImageSession.count') do
      post image_sessions_url, params: { image_session: {  } }
    end

    assert_redirected_to image_session_url(ImageSession.last)
  end

  test "should show image_session" do
    get image_session_url(@image_session)
    assert_response :success
  end

  test "should get edit" do
    get edit_image_session_url(@image_session)
    assert_response :success
  end

  test "should update image_session" do
    patch image_session_url(@image_session), params: { image_session: {  } }
    assert_redirected_to image_session_url(@image_session)
  end

  test "should destroy image_session" do
    assert_difference('ImageSession.count', -1) do
      delete image_session_url(@image_session)
    end

    assert_redirected_to image_sessions_url
  end
end
