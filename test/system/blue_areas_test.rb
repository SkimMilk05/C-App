require "application_system_test_case"

class BlueAreasTest < ApplicationSystemTestCase
  setup do
    @blue_area = blue_areas(:one)
  end

  test "visiting the index" do
    visit blue_areas_url
    assert_selector "h1", text: "Blue Areas"
  end

  test "creating a Blue area" do
    visit blue_areas_url
    click_on "New Blue Area"

    click_on "Create Blue area"

    assert_text "Blue area was successfully created"
    click_on "Back"
  end

  test "updating a Blue area" do
    visit blue_areas_url
    click_on "Edit", match: :first

    click_on "Update Blue area"

    assert_text "Blue area was successfully updated"
    click_on "Back"
  end

  test "destroying a Blue area" do
    visit blue_areas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Blue area was successfully destroyed"
  end
end
