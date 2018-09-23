class Api::GanjaController < ApplicationController
  def index
    response = HTTP.get("https://strainapi.evanbusse.com/#{ ENV['STRAIN_API_KEY'] }/strains/search/all")
    render json: response.parse
  end

  def strain
    response = HTTP.get("https://strainapi.evanbusse.com/#{ ENV['STRAIN_API_KEY'] }/strains/search/name/#{params[:name]}")
    render json: response.parse
  end
end
