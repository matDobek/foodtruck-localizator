module FoodtruckFetcher
  class FoodLocation
    def call(foodtruck_name)
      message = message_for(foodtruck.endpoint_data)
      address = AddressExtractor.new(message).call
      CoordinatesGenerator.new(address, foodtruck.city).call
    end

    private

    def request
      @request ||= Request.new
    end

    def message_for(foodtruck_name)
      response = request.today_posts_for(foodtruck_name)
      Parser.new(response).message
    end
  end
end
