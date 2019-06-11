require "application_system_test_case"

class BeaconsTest < ApplicationSystemTestCase
  setup do
    @beacon = beacons(:one)
  end

  test "visiting the index" do
    visit beacons_url
    assert_selector "h1", text: "Beacons"
  end

  test "creating a Beacon" do
    visit beacons_url
    click_on "New Beacon"

    fill_in "Enter text", with: @beacon.enter_text
    fill_in "Exit text", with: @beacon.exit_text
    fill_in "Major description", with: @beacon.major_description
    fill_in "Major name", with: @beacon.major_name
    fill_in "Minor description", with: @beacon.minor_description
    fill_in "Minor name", with: @beacon.minor_name
    click_on "Create Beacon"

    assert_text "Beacon was successfully created"
    click_on "Back"
  end

  test "updating a Beacon" do
    visit beacons_url
    click_on "Edit", match: :first

    fill_in "Enter text", with: @beacon.enter_text
    fill_in "Exit text", with: @beacon.exit_text
    fill_in "Major description", with: @beacon.major_description
    fill_in "Major name", with: @beacon.major_name
    fill_in "Minor description", with: @beacon.minor_description
    fill_in "Minor name", with: @beacon.minor_name
    click_on "Update Beacon"

    assert_text "Beacon was successfully updated"
    click_on "Back"
  end

  test "destroying a Beacon" do
    visit beacons_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Beacon was successfully destroyed"
  end
end
