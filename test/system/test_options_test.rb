require "application_system_test_case"

class TestOptionsTest < ApplicationSystemTestCase
  setup do
    @test_option = test_options(:one)
  end

  test "visiting the index" do
    visit test_options_url
    assert_selector "h1", text: "Test Options"
  end

  test "creating a Test option" do
    visit test_options_url
    click_on "New Test Option"

    click_on "Create Test option"

    assert_text "Test option was successfully created"
    click_on "Back"
  end

  test "updating a Test option" do
    visit test_options_url
    click_on "Edit", match: :first

    click_on "Update Test option"

    assert_text "Test option was successfully updated"
    click_on "Back"
  end

  test "destroying a Test option" do
    visit test_options_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Test option was successfully destroyed"
  end
end
