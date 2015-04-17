class VisitorsController < ApplicationController
  def index
    #UpdateFoodtrucksLocation.new.call
    trucks = params['city'] ? Foodtruck.where(city: params['city']) : Foodtruck.all

    trucks = trucks.map do |f|
      "{ lat: #{f.latitude}, lng: #{f.longitude}, infowindow: \"#{f.name}\" }"
    end.join(',')
    @foodtrucks = "[#{trucks}]"

  end
end
