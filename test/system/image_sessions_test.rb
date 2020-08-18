require "application_system_test_case"

class ImageSessionsTest < ApplicationSystemTestCase
  setup do
    @image_session = image_sessions(:one)
  end

  test "visiting the index" do
    visit image_sessions_url
    assert_selector "h1", text: "Image Sessions"
  end

  test "creating a Image session" do
    visit image_sessions_url
    click_on "New Image Session"

    fill_in "Blueleft", with: @image_session.blueLeft
    fill_in "Blueright", with: @image_session.blueRight
    fill_in "Bluewrong", with: @image_session.blueWrong
    fill_in "Colorlesswrong", with: @image_session.colorlessWrong
    fill_in "Greenleft", with: @image_session.greenLeft
    fill_in "Greenright", with: @image_session.greenRight
    fill_in "Greenwrong", with: @image_session.greenWrong
    fill_in "Image", with: @image_session.image_id
    fill_in "User", with: @image_session.user_id
    click_on "Create Image session"

    assert_text "Image session was successfully created"
    click_on "Back"
  end

  test "updating a Image session" do
    visit image_sessions_url
    click_on "Edit", match: :first

    fill_in "Blueleft", with: @image_session.blueLeft
    fill_in "Blueright", with: @image_session.blueRight
    fill_in "Bluewrong", with: @image_session.blueWrong
    fill_in "Colorlesswrong", with: @image_session.colorlessWrong
    fill_in "Greenleft", with: @image_session.greenLeft
    fill_in "Greenright", with: @image_session.greenRight
    fill_in "Greenwrong", with: @image_session.greenWrong
    fill_in "Image", with: @image_session.image_id
    fill_in "User", with: @image_session.user_id
    click_on "Update Image session"

    assert_text "Image session was successfully updated"
    click_on "Back"
  end

  test "destroying a Image session" do
    visit image_sessions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Image session was successfully destroyed"
  end
end
