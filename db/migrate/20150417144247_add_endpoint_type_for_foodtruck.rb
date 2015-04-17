class AddEndpointTypeForFoodtruck < ActiveRecord::Migration
  def change
    add_column :foodtrucks, :endpoint_type, :integer
  end
end
