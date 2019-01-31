require "application_system_test_case"

class StudentnsTest < ApplicationSystemTestCase
  setup do
    @studentn = studentns(:one)
  end

  test "visiting the index" do
    visit studentns_url
    assert_selector "h1", text: "Studentns"
  end

  test "creating a Studentn" do
    visit studentns_url
    click_on "New Studentn"

    fill_in "Address", with: @studentn.address
    fill_in "Name", with: @studentn.name
    fill_in "Phone", with: @studentn.phone
    fill_in "Regno", with: @studentn.regno
    fill_in "String", with: @studentn.string
    click_on "Create Studentn"

    assert_text "Studentn was successfully created"
    click_on "Back"
  end

  test "updating a Studentn" do
    visit studentns_url
    click_on "Edit", match: :first

    fill_in "Address", with: @studentn.address
    fill_in "Name", with: @studentn.name
    fill_in "Phone", with: @studentn.phone
    fill_in "Regno", with: @studentn.regno
    fill_in "String", with: @studentn.string
    click_on "Update Studentn"

    assert_text "Studentn was successfully updated"
    click_on "Back"
  end

  test "destroying a Studentn" do
    visit studentns_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Studentn was successfully destroyed"
  end
end
