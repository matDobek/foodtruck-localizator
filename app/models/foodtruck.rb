# == Schema Information
#
# Table name: foodtrucks
#
#  id            :integer          not null, primary key
#  name          :string
#  endpoint_data :string
#  longitude     :float
#  latitude      :float
#  address       :string
#  created_at    :datetime
#  updated_at    :datetime
#

class Foodtruck < ActiveRecord::Base
  def self.all_with_coordinates
   Foodtruck.all.map { |f| {lat: f.latitude, lng: f.longitude, infowindow: f.name} }
  end
end
