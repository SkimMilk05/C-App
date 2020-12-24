require "application_system_test_case"

class PreSurveysTest < ApplicationSystemTestCase
  setup do
    @pre_survey = pre_surveys(:one)
  end

  test "visiting the index" do
    visit pre_surveys_url
    assert_selector "h1", text: "Pre Surveys"
  end

  test "creating a Pre survey" do
    visit pre_surveys_url
    click_on "New Pre Survey"

    click_on "Create Pre survey"

    assert_text "Pre survey was successfully created"
    click_on "Back"
  end

  test "updating a Pre survey" do
    visit pre_surveys_url
    click_on "Edit", match: :first

    click_on "Update Pre survey"

    assert_text "Pre survey was successfully updated"
    click_on "Back"
  end

  test "destroying a Pre survey" do
    visit pre_surveys_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pre survey was successfully destroyed"
  end
end
