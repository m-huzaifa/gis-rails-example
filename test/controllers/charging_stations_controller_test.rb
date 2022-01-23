require 'test_helper'

class ChargingStationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @charging_station = charging_stations(:one)
  end

  test "should get index" do
    get charging_stations_url
    assert_response :success
  end

  test "should get new" do
    get new_charging_station_url
    assert_response :success
  end

  test "should create charging_station" do
    assert_difference('ChargingStation.count') do
      post charging_stations_url, params: { charging_station: {  } }
    end

    assert_redirected_to charging_station_url(ChargingStation.last)
  end

  test "should show charging_station" do
    get charging_station_url(@charging_station)
    assert_response :success
  end

  test "should get edit" do
    get edit_charging_station_url(@charging_station)
    assert_response :success
  end

  test "should update charging_station" do
    patch charging_station_url(@charging_station), params: { charging_station: {  } }
    assert_redirected_to charging_station_url(@charging_station)
  end

  test "should destroy charging_station" do
    assert_difference('ChargingStation.count', -1) do
      delete charging_station_url(@charging_station)
    end

    assert_redirected_to charging_stations_url
  end
end
