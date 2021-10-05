class VacationsController < ApplicationController
  def new
    @vacation = Vacation.new
    @all_travelers = Traveler.all
    @all_countries = Country.all
  end

  def create
    @vacation = Vacation.new(vacation_params)

    if @vacation.save
      redirect_to country_path(@vacation.country)
    else
      render :new
    end
  end

private

  def vacation_params
    params.require(:vacation).permit(:country_id, :traveler_id, :favorite)
  end
end