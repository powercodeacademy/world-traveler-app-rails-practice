require "rails_helper"

describe 'traveler show', :type => :feature do
  it "displays the travelers name and age" do
    traveler = create_traveler

    visit traveler_path(traveler)

    expect(page).to have_content "Sebastian"
    expect(page).to have_content "29"
  end

  def create_traveler
    Traveler.create(name: "Sebastian", age: 29)
  end
end