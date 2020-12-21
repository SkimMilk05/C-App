require 'test_helper'

class TestOptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @test_option = test_options(:one)
  end

  test "should get index" do
    get test_options_url
    assert_response :success
  end

  test "should get new" do
    get new_test_option_url
    assert_response :success
  end

  test "should create test_option" do
    assert_difference('TestOption.count') do
      post test_options_url, params: { test_option: {  } }
    end

    assert_redirected_to test_option_url(TestOption.last)
  end

  test "should show test_option" do
    get test_option_url(@test_option)
    assert_response :success
  end

  test "should get edit" do
    get edit_test_option_url(@test_option)
    assert_response :success
  end

  test "should update test_option" do
    patch test_option_url(@test_option), params: { test_option: {  } }
    assert_redirected_to test_option_url(@test_option)
  end

  test "should destroy test_option" do
    assert_difference('TestOption.count', -1) do
      delete test_option_url(@test_option)
    end

    assert_redirected_to test_options_url
  end
end
