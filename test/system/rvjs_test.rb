require "application_system_test_case"

class RvjsTest < ApplicationSystemTestCase
  setup do
    @rvj = rvjs(:one)
  end

  test "visiting the index" do
    visit rvjs_url
    assert_selector "h1", text: "Rvjs"
  end

  test "should create rvj" do
    visit rvjs_url
    click_on "New rvj"

    fill_in "Block", with: @rvj.block
    fill_in "Title", with: @rvj.title
    click_on "Create Rvj"

    assert_text "Rvj was successfully created"
    click_on "Back"
  end

  test "should update Rvj" do
    visit rvj_url(@rvj)
    click_on "Edit this rvj", match: :first

    fill_in "Block", with: @rvj.block
    fill_in "Title", with: @rvj.title
    click_on "Update Rvj"

    assert_text "Rvj was successfully updated"
    click_on "Back"
  end

  test "should destroy Rvj" do
    visit rvj_url(@rvj)
    click_on "Destroy this rvj", match: :first

    assert_text "Rvj was successfully destroyed"
  end
end
