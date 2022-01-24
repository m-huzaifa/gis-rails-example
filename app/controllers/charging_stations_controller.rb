class ChargingStationsController < ApplicationController
  before_action :set_charging_station, only: %i[ show edit update destroy ]

  # GET /charging_stations or /charging_stations.json
  def index
    # @charging_stations = ChargingStation.all
    @charging_stations = []
    @lat = nil
    @lng = nil

    if params[:coordinates]
      @lat = params[:coordinates].split(',')[0]
      @lng = params[:coordinates].split(',')[1]
    end

    param = params[:search] || params[:coordinates]

    if param
      @charging_stations = ChargingStation.near(param, 1, units: :km, :order => :distance)

      if !params[:coordinates] && @charging_stations.length > 0
        @lat = @charging_stations.first&.latitude
        @lng = @charging_stations.first&.longitude
      end
    end
  end

  # stations.each do |s|

  #   {|s| ChargingStation.create!(s)}
  # end

  # GET /charging_stations/1 or /charging_stations/1.json
  def show
  end

  # GET /charging_stations/new
  def new
    @charging_station = ChargingStation.new
  end

  # GET /charging_stations/1/edit
  def edit
  end

  # POST /charging_stations or /charging_stations.json
  def create
    @charging_station = ChargingStation.new(charging_station_params)

    respond_to do |format|
      if @charging_station.save
        format.html { redirect_to charging_station_url(@charging_station), notice: "Charging station was successfully created." }
        format.json { render :show, status: :created, location: @charging_station }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @charging_station.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /charging_stations/1 or /charging_stations/1.json
  def update
    respond_to do |format|
      if @charging_station.update(charging_station_params)
        format.html { redirect_to charging_station_url(@charging_station), notice: "Charging station was successfully updated." }
        format.json { render :show, status: :ok, location: @charging_station }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @charging_station.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /charging_stations/1 or /charging_stations/1.json
  def destroy
    @charging_station.destroy

    respond_to do |format|
      format.html { redirect_to charging_stations_url, notice: "Charging station was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_charging_station
      @charging_station = ChargingStation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def charging_station_params
      params.fetch(:charging_station, {})
    end
end
