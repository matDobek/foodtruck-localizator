class UpdateFoodtrucksLocation
  def call
    fetcher = FoodtruckFetcher::FoodLocation.new

    Foodtruck.all.each do |foodtruck|
      coordinates = fetcher.call(foodtruck)

      foodtruck.update(
        latitude: coordinates[:latitude],
        longitude: coordinates[:longitude],
        address: coordinates[:address]
      )
    end
  end
end
