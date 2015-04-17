class CoordinatesGenerator
  attr_reader :address, :api_key

  def initialize(address, city = nil)
    @city = city
    @address = CGI.escape([city, address].compact.join(' '))
    @api_key = ENV['GOOGLE_GEOCODER_KEY']
  end

  def call
    output = JSON.parse(HTTParty.get(request_url).body)
    sleep 0.2
    return {} if output['status'] == 'ZERO_RESULTS'
    coordinates(output)
  end

  def request_url
    "https://maps.googleapis.com/maps/api/geocode/json?address=#{address}&sensor=false&key=#{api_key}"
  end

  def coordinates(input)
    first_result = input['results'][0]
    location = first_result['geometry']['location']
    result = {}
    result[:latitude] = location['lat']
    result[:longitude] = location['lng']
    result[:address] = first_result['formatted_address']
    result
  end
end
