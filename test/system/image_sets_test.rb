require "application_system_test_case"

class ImageSetsTest < ApplicationSystemTestCase
  setup do
    @image_set = image_sets(:one)
  end

  test "visiting the index" do
    visit image_sets_url
    assert_selector "h1", text: "Image Sets"
  end

  test "creating a Image set" do
    visit image_sets_url
    click_on "New Image Set"

    click_on "Create Image set"

    assert_text "Image set was successfully created"
    click_on "Back"
  end

  test "updating a Image set" do
    visit image_sets_url
    click_on "Edit", match: :first

    click_on "Update Image set"

    assert_text "Image set was successfully updated"
    click_on "Back"
  end

  test "destroying a Image set" do
    visit image_sets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Image set was successfully destroyed"
  end
end
