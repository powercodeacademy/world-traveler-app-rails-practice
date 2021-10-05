class TravelersController < ApplicationController
  def index
    @travelers = Traveler.all
  end

  def show
    @traveler = Traveler.find(params[:id])
    @favorite_countries = @traveler.vacations.where(favorite: true).map(&:country)
  end
end
