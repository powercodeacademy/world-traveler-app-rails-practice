describe 'travelers show with favorite countries', :type => :feature do
  it "displays all countries that are a travelers favorite" do
    traveler = create_traveler
    argentina = create_country(name: "Argentina", description: "Country in South America")
    brazil = create_country(name: "Brazil", description: "Another country in South America")

    create_vacation(country: argentina, traveler: traveler, favorite: true)
    create_vacation(country: brazil, traveler: traveler, favorite: false)

    visit traveler_path(traveler)

    expect(page).to have_content "Argentina"
    expect(page).to_not have_content "Brazil"
  end

  def create_traveler
    Traveler.create(name: "Sebastian", age: 29)
  end

  def create_country(name:, description:)
    Country.create(name: name, description: description)
  end

  def create_vacation(country:, traveler:, favorite:)
    Vacation.create(country: country, traveler: traveler, favorite: favorite)
  end
end