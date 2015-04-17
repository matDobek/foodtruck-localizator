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
end
