module FoodtruckFetcher
  class AboutParser
    def initialize(response)
      @response = response
    end

    def parse
      location = about[:location]

      {
        latitude: location[:latitude],
        longitude: location[:longitude],
        address: "#{location[:street]}, #{location[:city]}"
      }
    end

    private

    attr_reader :response

    def about
      response.to_h.deep_symbolize_keys
    end
  end
end
