require "application_system_test_case"

class MyapplicationsTest < ApplicationSystemTestCase
  setup do
    @myapplication = myapplications(:one)
  end

  test "visiting the index" do
    visit myapplications_url
    assert_selector "h1", text: "Myapplications"
  end

  test "should create myapplication" do
    visit myapplications_url
    click_on "New myapplication"

    fill_in "Detail", with: @myapplication.detail
    fill_in "Note", with: @myapplication.note
    fill_in "Status", with: @myapplication.status
    fill_in "Title", with: @myapplication.title
    click_on "Create Myapplication"

    assert_text "Myapplication was successfully created"
    click_on "Back"
  end

  test "should update Myapplication" do
    visit myapplication_url(@myapplication)
    click_on "Edit this myapplication", match: :first

    fill_in "Detail", with: @myapplication.detail
    fill_in "Note", with: @myapplication.note
    fill_in "Status", with: @myapplication.status
    fill_in "Title", with: @myapplication.title
    click_on "Update Myapplication"

    assert_text "Myapplication was successfully updated"
    click_on "Back"
  end

  test "should destroy Myapplication" do
    visit myapplication_url(@myapplication)
    click_on "Destroy this myapplication", match: :first

    assert_text "Myapplication was successfully destroyed"
  end
end
