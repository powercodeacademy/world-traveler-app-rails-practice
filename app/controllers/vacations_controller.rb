class VacationsController < ApplicationController
  def new
    @vacation = Vacation.new
  end

  def create
    @vacation = Vacation.new(vacation_params)
    if @vacation.save
      redirect_to @vacation.country
    else
      render :new
    end
  end

  private

  def vacation_params
    params.require(:vacation).permit(:country_id, :traveler_id, :favorite)
  end
end
