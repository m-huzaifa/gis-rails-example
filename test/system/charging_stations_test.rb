require "application_system_test_case"

class ChargingStationsTest < ApplicationSystemTestCase
  setup do
    @charging_station = charging_stations(:one)
  end

  test "visiting the index" do
    visit charging_stations_url
    assert_selector "h1", text: "Charging Stations"
  end

  test "creating a Charging station" do
    visit charging_stations_url
    click_on "New Charging Station"

    click_on "Create Charging station"

    assert_text "Charging station was successfully created"
    click_on "Back"
  end

  test "updating a Charging station" do
    visit charging_stations_url
    click_on "Edit", match: :first

    click_on "Update Charging station"

    assert_text "Charging station was successfully updated"
    click_on "Back"
  end

  test "destroying a Charging station" do
    visit charging_stations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Charging station was successfully destroyed"
  end
end
