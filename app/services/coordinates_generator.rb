class CoordinatesGenerator
  attr_reader :address, :api_key

  def initialize(address)
    @address = CGI.escape(address)
    @api_key = ENV['GOOGLE_GEOCODER_KEY']
  end

  def call
    output = JSON.parse(HTTParty.get(request_url).body)
    return nil if output['status'] == 'ZERO_RESULTS'
    coordinates(output)
  end

  def request_url
    "https://maps.googleapis.com/maps/api/geocode/json?address=#{address}&sensor=false&key=#{api_key}"
  end

  def coordinates(input)
    first_result = input['results'][0]
    location = first_result['geometry']['location']
    lat = location['lat']
    lng = location['lng']
    formatted = first_result['formatted_address']
    [lat, lng, formatted]
  end
end
