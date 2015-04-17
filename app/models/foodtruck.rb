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
  enum endpoint_type: [ :facebook_wall, :facebook_about ]

  def self.all_with_coordinates
   Foodtruck.all.map do |f|
     {lat: f.latitude, lng: f.longitude}
   end
  end
end
