require "application_system_test_case"

class PostSurveysTest < ApplicationSystemTestCase
  setup do
    @post_survey = post_surveys(:one)
  end

  test "visiting the index" do
    visit post_surveys_url
    assert_selector "h1", text: "Post Surveys"
  end

  test "creating a Post survey" do
    visit post_surveys_url
    click_on "New Post Survey"

    click_on "Create Post survey"

    assert_text "Post survey was successfully created"
    click_on "Back"
  end

  test "updating a Post survey" do
    visit post_surveys_url
    click_on "Edit", match: :first

    click_on "Update Post survey"

    assert_text "Post survey was successfully updated"
    click_on "Back"
  end

  test "destroying a Post survey" do
    visit post_surveys_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Post survey was successfully destroyed"
  end
end
