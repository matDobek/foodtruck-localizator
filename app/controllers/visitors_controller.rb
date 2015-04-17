class VisitorsController < ApplicationController
  def index
    UpdateFoodtrucksLocation.new.call
  end
end
