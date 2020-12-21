require "application_system_test_case"

class TestAnswersTest < ApplicationSystemTestCase
  setup do
    @test_answer = test_answers(:one)
  end

  test "visiting the index" do
    visit test_answers_url
    assert_selector "h1", text: "Test Answers"
  end

  test "creating a Test answer" do
    visit test_answers_url
    click_on "New Test Answer"

    click_on "Create Test answer"

    assert_text "Test answer was successfully created"
    click_on "Back"
  end

  test "updating a Test answer" do
    visit test_answers_url
    click_on "Edit", match: :first

    click_on "Update Test answer"

    assert_text "Test answer was successfully updated"
    click_on "Back"
  end

  test "destroying a Test answer" do
    visit test_answers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Test answer was successfully destroyed"
  end
end
