class AddCityToFoodtrucks < ActiveRecord::Migration
  def change
    add_column :foodtrucks, :city, :string
  end
end
