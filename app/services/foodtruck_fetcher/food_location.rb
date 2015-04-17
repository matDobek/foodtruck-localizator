module FoodtruckFetcher
  class FoodLocation
    def call(foodtruck_id)
      foodtruck = Foodtruck.find_by(id: foodtruck_id) or return
      message_for(foodtruck.endpoint_data)
    end

    private

    def request
      @request ||= Request.new
    end

    def message_for(foodtruck)
      response = request.today_posts_for(foodtruck)
      Parser.new(response).message
    end
  end
end
