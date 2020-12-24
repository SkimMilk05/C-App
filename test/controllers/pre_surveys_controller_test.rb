require 'test_helper'

class PreSurveysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pre_survey = pre_surveys(:one)
  end

  test "should get index" do
    get pre_surveys_url
    assert_response :success
  end

  test "should get new" do
    get new_pre_survey_url
    assert_response :success
  end

  test "should create pre_survey" do
    assert_difference('PreSurvey.count') do
      post pre_surveys_url, params: { pre_survey: {  } }
    end

    assert_redirected_to pre_survey_url(PreSurvey.last)
  end

  test "should show pre_survey" do
    get pre_survey_url(@pre_survey)
    assert_response :success
  end

  test "should get edit" do
    get edit_pre_survey_url(@pre_survey)
    assert_response :success
  end

  test "should update pre_survey" do
    patch pre_survey_url(@pre_survey), params: { pre_survey: {  } }
    assert_redirected_to pre_survey_url(@pre_survey)
  end

  test "should destroy pre_survey" do
    assert_difference('PreSurvey.count', -1) do
      delete pre_survey_url(@pre_survey)
    end

    assert_redirected_to pre_surveys_url
  end
end
