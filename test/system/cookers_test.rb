require "application_system_test_case"

class CookersTest < ApplicationSystemTestCase
  setup do
    @cooker = cookers(:one)
  end

  test "visiting the index" do
    visit cookers_url
    assert_selector "h1", text: "Cookers"
  end

  test "creating a Cooker" do
    visit cookers_url
    click_on "New Cooker"

    fill_in "Address", with: @cooker.address
    fill_in "Name", with: @cooker.name
    click_on "Create Cooker"

    assert_text "Cooker was successfully created"
    click_on "Back"
  end

  test "updating a Cooker" do
    visit cookers_url
    click_on "Edit", match: :first

    fill_in "Address", with: @cooker.address
    fill_in "Name", with: @cooker.name
    click_on "Update Cooker"

    assert_text "Cooker was successfully updated"
    click_on "Back"
  end

  test "destroying a Cooker" do
    visit cookers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cooker was successfully destroyed"
  end
end
