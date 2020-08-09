require "application_system_test_case"

class GreenAreasTest < ApplicationSystemTestCase
  setup do
    @green_area = green_areas(:one)
  end

  test "visiting the index" do
    visit green_areas_url
    assert_selector "h1", text: "Green Areas"
  end

  test "creating a Green area" do
    visit green_areas_url
    click_on "New Green Area"

    click_on "Create Green area"

    assert_text "Green area was successfully created"
    click_on "Back"
  end

  test "updating a Green area" do
    visit green_areas_url
    click_on "Edit", match: :first

    click_on "Update Green area"

    assert_text "Green area was successfully updated"
    click_on "Back"
  end

  test "destroying a Green area" do
    visit green_areas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Green area was successfully destroyed"
  end
end
