class AddFoodtrucksTable < ActiveRecord::Migration
  def change
    create_table :foodtrucks do |t|
      t.string :name
      t.string :endpoint_data
      t.float :longitude
      t.float :latitude
      t.string :address
      t.timestamps
    end
  end
end
