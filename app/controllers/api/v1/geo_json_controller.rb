class Api::V1::GeoJsonController < ApplicationController
  def geo_json
    if params[:search]
      message = Geocoder.search(params[:search])
    else
      message = 'Pass search params'
    end
    render json: { GeoJson: message }
  end
end
