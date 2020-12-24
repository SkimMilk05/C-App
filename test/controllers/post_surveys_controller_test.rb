require 'test_helper'

class PostSurveysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post_survey = post_surveys(:one)
  end

  test "should get index" do
    get post_surveys_url
    assert_response :success
  end

  test "should get new" do
    get new_post_survey_url
    assert_response :success
  end

  test "should create post_survey" do
    assert_difference('PostSurvey.count') do
      post post_surveys_url, params: { post_survey: {  } }
    end

    assert_redirected_to post_survey_url(PostSurvey.last)
  end

  test "should show post_survey" do
    get post_survey_url(@post_survey)
    assert_response :success
  end

  test "should get edit" do
    get edit_post_survey_url(@post_survey)
    assert_response :success
  end

  test "should update post_survey" do
    patch post_survey_url(@post_survey), params: { post_survey: {  } }
    assert_redirected_to post_survey_url(@post_survey)
  end

  test "should destroy post_survey" do
    assert_difference('PostSurvey.count', -1) do
      delete post_survey_url(@post_survey)
    end

    assert_redirected_to post_surveys_url
  end
end
