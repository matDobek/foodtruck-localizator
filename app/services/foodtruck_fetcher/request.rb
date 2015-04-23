module FoodtruckFetcher
  class Request
    def today_posts_for(foodtruck_name)
      client.get_connection foodtruck_name, 'posts', {
        since: DateTime.now.beginning_of_day.to_s,
        fields: ['id', 'message', 'created_time']
      }
    end

    def about(foodtruckt_name)
      client.get_object foodtruckt_name
    end

    private

    def access_token
      @access_token ||= Koala::Facebook::OAuth.new(
        ENV['FACEBOOK_APP_ID'],
        ENV['FACEBOOK_APP_SECRET']
      ).get_app_access_token
    end

    def client
      @clinet ||= Koala::Facebook::API.new access_token
    end
  end
end
