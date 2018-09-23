class Api::WeatherController < ApplicationController
  def index
    response = HTTP.get("https://api.darksky.net/forecast/#{ ENV['DARKSKY_API_KEY'] }/41.8935,-87.6625")
    render json: response.parse
  end
end
