module FoodtruckFetcher
  class FoodLocation
    def call(foodtruck)
      if foodtruck.facebook_wall?
        response = request.today_posts_for(foodtruck.endpoint_data)
        message = MessageParser.new(response).parse
        address = AddressExtractor.new(message).call
        CoordinatesGenerator.new(address, foodtruck.city).call
      elsif foodtruck.facebook_about?
        response = request.about foodtruck.endpoint_data
        AboutParser.new(response).parse
      end
    end

    private

    def request
      @request ||= Request.new
    end
  end
end
