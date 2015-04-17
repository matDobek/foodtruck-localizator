class UpdateFoodtrucksLocation
  def call
    fetcher = FoodtruckFetcher::FoodLocation.new

    Foodtruck.all.each do |foodtruck|
      message = fetcher.call(foodtruck.id)
      address = AddressExtractor.new(message).call
      coordinates = CoordinatesGenerator.new(address).call

      foodtruck.update(
        latitude: coordinates[:latitude],
        longitude: coordinates[:longitude],
        address: coordinates[:address]
      )
    end
  end
end
